USE [Yoda]
GO
/****** Object:  StoredProcedure [CLO].[spGetSummaryData]    Script Date: 7/2/2021 5:14:36 AM ******/
DROP PROCEDURE [CLO].[spGetSummaryData]
GO
/****** Object:  StoredProcedure [CLO].[spGetSummaryData]    Script Date: 7/2/2021 5:14:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CLO].[spGetSummaryData]
	@dateId INT = 0
AS

DECLARE @priorDay TABLE(FundId INT, Exposure NUMERIC(38, 4), PrincipalCash NUMERIC(38, 10))
DECLARE @currentDay TABLE(FundId INT, Exposure NUMERIC(38, 4), PrincipalCash NUMERIC(38, 10))

CREATE TABLE #fundDiversities 
(
	FundId int,
	Diversity numeric(38,10),
	BODDiversity numeric(38,10)
)

CREATE TABLE #ExposureBy_Issuer_MoodyIndustry_Portfolio(
       FundCode VARCHAR(100), 
       FundId INT,
       IssuerDesc VARCHAR(1000),
       IssuerId INT, 
       IndustryDesc VARCHAR(1000),
       MoodyIndustryId INT, 
       Exposure NUMERIC(28,2),
	   BODExposure NUMERIC(28,2),
       DiversityUnit NUMERIC(28,8), 
       Diveristy NUMERIC(28,8),
       BODDiversityUnit NUMERIC(28,8), 
       BODDiveristy NUMERIC(28,8)
)

CREATE TABLE #AVG_Fund_Exposure (FundId VARCHAR(100), AvgExposure NUMERIC(38,10), BODAvgExposure NUMERIC(38,10))

INSERT INTO #ExposureBy_Issuer_MoodyIndustry_Portfolio
SELECT p.FundCode , p.FundId, p.Issuer,p.IssuerId, p.MoodyIndustry,
p.MoodyIndustryId, SUM(ISNULL(P.NumExposure,0)) Exposure  ,SUM(ISNULL(P.BODExposure,0)) BODExposure,  
NULL AS DiversityUnit, NULL AS Diveristy,NULL AS BODDiversityUnit, NULL AS BODDiveristy
FROM CLO.vw_Position p WITH(NOLOCK) 
where  p.PositionDateId is not null
GROUP BY p.IssuerId,p.Issuer, p.MoodyIndustryId,p.MoodyIndustry,p.FundCode,p.FundId
ORDER by p.Issuer,p.MoodyIndustry,p.FundCode


INSERT INTO #AVG_Fund_Exposure
        ( FundId, AvgExposure,BODAvgExposure )
SELECT FundId, AVG(Exposure) AvgExposure, AVG(BODExposure) BODAvgExposure
FROM #ExposureBy_Issuer_MoodyIndustry_Portfolio WITH(NOLOCK)
WHERE Exposure <> 0
GROUP BY FundId


UPDATE #ExposureBy_Issuer_MoodyIndustry_Portfolio
SET DiversityUnit = CASE WHEN AvgExposure = 0.0000 THEN 0.0000 ELSE (Exposure/AvgExposure) END ,
BODDiversityUnit = CASE WHEN BODAvgExposure = 0.0000 THEN 0.0000 ELSE (BODExposure/BODAvgExposure) END 
FROM #AVG_Fund_Exposure i  WITH(NOLOCK) WHERE i.FundId = [#ExposureBy_Issuer_MoodyIndustry_Portfolio].FundId


UPDATE #ExposureBy_Issuer_MoodyIndustry_Portfolio
SET DiversityUnit = 1.0000 
WHERE DiversityUnit > 1.0

UPDATE #ExposureBy_Issuer_MoodyIndustry_Portfolio
SET BODDiversityUnit = 1.0000 
WHERE BODDiversityUnit > 1.0


CREATE TABLE #Diverisity (FundId int, MoodyIndustryId INT, IndustryDesc VARCHAR(1000),
TotalDiversityUnit NUMERIC(28,4), DiversityValue NUMERIC(38,4),BODTotalDiversityUnit NUMERIC(28,4), BODDiversityValue NUMERIC(38,4) )

INSERT INTO #Diverisity
SELECT FundId, MoodyIndustryId, MAX(IndustryDesc) IndustryDesc,  
SUM(DiversityUnit) TotalDiversityUnit, NULL AS DiversityValue ,
SUM(BODDiversityUnit) BODTotalDiversityUnit, NULL AS BODDiversityValue 
FROM #ExposureBy_Issuer_MoodyIndustry_Portfolio  WITH(NOLOCK)
GROUP BY MoodyIndustryId, FundId 

UPDATE #Diverisity
SET DiversityValue = (SELECT TOP 1 [ParameterMaxValueNumber]  FROM 
[CLO].ParameterValue p  WITH(NOLOCK) WHERE p.ParameterTypeId =5 AND ParameterValueNumber <= TotalDiversityUnit
ORDER BY p.ParameterValueNumber DESC)


UPDATE #Diverisity
SET BODDiversityValue = (SELECT TOP 1 [ParameterMaxValueNumber] FROM 
[CLO].ParameterValue p  WITH(NOLOCK) WHERE p.ParameterTypeId =5 AND ParameterValueNumber <= BODTotalDiversityUnit
ORDER BY p.ParameterValueNumber DESC)


INSERT #fundDiversities
SELECT FundId, SUM(DiversityValue) AS Diversity,SUM(BODDiversityValue) AS BODDiversity  FROM #Diverisity WITH(NOLOCK) GROUP BY FundId

--get the current day exposure and cash
INSERT INTO @currentDay (FundId, Exposure, PrincipalCash)
SELECT F.FundId, SUM(P.Exposure), MAX(F.PrincipalCash)
FROM CLO.vw_SecurityFund F INNER JOIN CLO.Position P WITH(NOLOCK)
ON P.FundId = F.FundId
AND P.SecurityId = F.SecurityId
WHERE P.DateId = @dateId
GROUP BY F.FundId, F.FundCode

SELECT FundId, FundCode, SUM(Exposure) AS Exposure
INTO #assetPar
FROM #ExposureBy_Issuer_MoodyIndustry_Portfolio
GROUP BY FundId, FundCode

SELECT summary.[FundCode]
	  ,summary.IsStale
	  ,summary.DateId	
      ,summary.[Par]
	  ,summary.[BODPar]
      ,summary.[Spread]
	  ,summary.[BODSpread]
      ,summary.[TotalCoupon]
	  ,summary.[BODTotalCoupon]
      ,summary.[WARF]
	  ,summary.[BODWARF]
      ,summary.[MoodyRecovery]
	  ,summary.[BODMoodyRecovery]
      ,summary.[Bid]
	  ,summary.[BODBid]
      ,summary.[PrincipalCash]
	  ,summary.[BODPrincipalCash]
      ,summary.[FundId]
	  ,d.[Diversity]
	  ,d.[BODDiversity]
	  ,summary.[CleanNav]
	  ,summary.[BODCleanNav]
	  ,summary.[WAMaturityDays]
	  ,summary.[BODWAMaturityDays]
	  ,CAST(NULL As numeric(30,10)) AS PriorDayExposure
	  ,CAST(NULL As numeric(30,10))  AS PriorDayPrincipalCash
	  , p.Exposure AS AssetPar
	  , summary.WSOSpread
	  , summary.WSOWARF
	  , summary.WSOMoodyRecovery
	  , summary.WSOWALife
	  , summary.WSODiversity
	  , summary.SortOrder
FROM
CLO.vw_CLOSummary summary WITH(NOLOCK)
LEFT JOIN #fundDiversities d WITH(NOLOCK) ON d.FundId = summary.FundId
LEFT OUTER JOIN @currentDay c ON summary.FundId = c.FundId
LEFT OUTER JOIN #assetPar p ON p.FundId = summary.FundId
WHERE summary.DateId = @dateId
--AND summary.IsWarehouse = 0
ORDER BY summary.SortOrder

DROP TABLE #ExposureBy_Issuer_MoodyIndustry_Portfolio
DROP TABLE #AVG_Fund_Exposure
DROP TABLE #fundDiversities
DROP TABLE #Diverisity
DROP TABLE #assetPar


GO
