USE [Yoda]
GO
/****** Object:  StoredProcedure [CLO].[spGetMismatchData]    Script Date: 7/2/2021 5:14:36 AM ******/
DROP PROCEDURE [CLO].[spGetMismatchData]
GO
/****** Object:  StoredProcedure [CLO].[spGetMismatchData]    Script Date: 7/2/2021 5:14:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CLO].[spGetMismatchData]
	@fieldId int
AS

SELECT SecurityId,ISNULL(CASE WHEN @fieldId = 13 THEN MoodyCashFlowRating WHEN @fieldId=14 THEN	 MoodyCashFlowRatingAdjusted WHEN @fieldId=15 THEN MoodyFacilityRating end,'***MISSING***')  MoodyCashFlowRatingAdjusted
INTO #GroupedSecCfrs
FROM CLO.vw_MarketData WHERE DateId = clo.GetPrevDayDateId() AND FundId NOT IN (10)
GROUP BY SecurityId,CASE WHEN @fieldId = 13 THEN MoodyCashFlowRating WHEN @fieldId=14 THEN	 MoodyCashFlowRatingAdjusted WHEN @fieldId=15 THEN MoodyFacilityRating end

SELECT SecurityId
INTO #IssuesSecs
FROM #GroupedSecCfrs
GROUP BY SecurityId
HAVING COUNT(*) > 1

SELECT sec.SecurityCode,fund.FundCode,MoodyCashFlowRatingAdjusted 
INTO #Result
FROM CLO.vw_MarketData 
JOIN CLO.Security sec ON sec.SecurityId = vw_MarketData.SecurityId
JOIN CLO.Fund fund ON fund.FundId = vw_MarketData.FundId
WHERE sec.SecurityId IN (SELECT SecurityId FROM #IssuesSecs)
ORDER BY sec.SecurityCode,fund.FundCode


SELECT pvt.SecurityCode, pvt.[CLO-1] AS CLO1, pvt.[CLO-2] AS CLO2,pvt.[CLO-3] AS CLO3,pvt.[CLO-4] AS CLO4,pvt.[CLO-5] AS CLO5,pvt.[CLO-6] AS CLO6,pvt.[CLO-7] AS CLO7,pvt.[CLO-8] AS CLO8,pvt.[CLO-9] AS CLO9
FROM (
SELECT SecurityCode, FundCode, MoodyCashFlowRatingAdjusted
FROM #Result) up
 PIVOT (MAX(MoodyCashFlowRatingAdjusted) FOR FundCode IN ([CLO-1], [CLO-2],[CLO-3],[CLO-4],[CLO-5],[CLO-6],[CLO-7],[CLO-8],[CLO-9])) AS pvt
ORDER BY pvt.SecurityCode

DROP TABLE #GroupedSecCfrs
DROP TABLE #IssuesSecs
DROP TABLE #Result

RETURN 0


GO
