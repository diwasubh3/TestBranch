USE [Yoda]
GO
/****** Object:  StoredProcedure [CLO].[spGetAssetPar]    Script Date: 7/2/2021 5:14:36 AM ******/
DROP PROCEDURE [CLO].[spGetAssetPar]
GO
/****** Object:  StoredProcedure [CLO].[spGetAssetPar]    Script Date: 7/2/2021 5:14:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CLO].[spGetAssetPar]
    @dateId AS INT
AS
DECLARE @prevDateId INT
SET @prevDateId = CLO.GetPrevDayDateId()
IF @dateId = @prevDateId
	SELECT F.FundId, SUM(P.Exposure) AS AssetPar, MAX(ISNULL(F.PrincipalCash, 0)) AS PrincipalCash
	FROM CLO.vw_SecurityFund F INNER JOIN CLO.Position P ON P.FundId = F.FundId
	AND P.SecurityId = F.SecurityId
	WHERE P.DateId = @dateId
	GROUP BY F.FundId, F.FundCode
ELSE
BEGIN
	WITH priorSnap AS 
	(
		SELECT FundId, DateId, MAX(PrincipalCash) AS PrincipalCash FROM CLO.FundDailySnapshot
		WHERE DateId = @prevDateId
		GROUP BY FundId, DateId
	)
	SELECT F.FundId, SUM(P.Exposure) AS AssetPar, MAX(ISNULL(S.PrincipalCash, 0)) AS PrincipalCash
	FROM CLO.vw_SecurityFund F INNER JOIN CLO.Position P ON P.FundId = F.FundId
	AND P.SecurityId = F.SecurityId
	INNER JOIN priorSnap S
	ON S.FundId = F.FundId
	WHERE P.DateId = @dateId
	GROUP BY F.FundId, F.FundCode
END


GO
