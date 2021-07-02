USE [Yoda]
GO
/****** Object:  View [CLO].[vw_Calculation]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP VIEW [CLO].[vw_Calculation]
GO
/****** Object:  View [CLO].[vw_Calculation]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [CLO].[vw_Calculation] --WITH SCHEMABINDING 
	AS 
	SELECT 
	  CalculationId
	, DateId
	, SecurityId
	, FundId
	, YieldBid
	, YieldOffer
	, YieldMid
	, CappedYieldBid
	, CappedYieldOffer
	, CappedYieldMid
	, TargetYieldBid
	, TargetYieldOffer
	, TargetYieldMid
	, BetterWorseBid
	, BetterWorseOffer
	, BetterWorseMid
	, TotalCoupon
	, WARF
	, WARFRecovery
	, Life
	, TotalPar
	, moodyfacilityratingadjusted.RatingDesc AS MoodyFacilityRatingAdjusted
	, c.CreatedOn
	, c.CreatedBy
	, c.LastUpdatedOn
	, c.LastUpdatedBy
	, c.MatrixImpliedSpread
	, c.MatrixWARFRecovery
	, c.zSnPAssetRecoveryRating
	, c.SnpWarf
	, c.SnpLgd
	, c.MoodysLgd
	, c.YieldAvgLgd
	, c.SnpAAARecovery
	, c.SnPIssuerRatingAdjusted
	,moodycashflowratingadjusted.RatingDesc AS MoodyCashFlowRatingAdjusted
	, ROW_NUMBER() OVER (PARTITION BY SecurityId, FundId
			ORDER BY DateId DESC) AS RowNumber
	FROM CLO.Calculation c (NOLOCK)
	LEFT JOIN CLO.Rating moodyfacilityratingadjusted (NOLOCK) ON moodyfacilityratingadjusted.RatingId = c.MoodyFacilityRatingAdjustedId
	LEFT JOIN CLO.Rating moodycashflowratingadjusted (NOLOCK) ON moodycashflowratingadjusted.RatingId = c.[MoodyCashFlowRatingAdjustedId]
	WHERE DateId = CLO.GetPrevDayDateId()


GO
