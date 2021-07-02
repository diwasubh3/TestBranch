USE [Yoda]
GO
/****** Object:  View [CLO].[vw_CalculationSecurity]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP VIEW [CLO].[vw_CalculationSecurity]
GO
/****** Object:  View [CLO].[vw_CalculationSecurity]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [CLO].[vw_CalculationSecurity]
AS
	SELECT	CalculationId, DateId, SecurityId, YieldBid, YieldOffer, YieldMid
		, CappedYieldBid, CappedYieldOffer, CappedYieldMid, TargetYieldBid, TargetYieldOffer
		, TargetYieldMid, BetterWorseBid, BetterWorseOffer, BetterWorseMid, TotalCoupon, WARF
		, WARFRecovery, Life, TotalPar, moodyfacilityratingadjusted.RatingDesc AS MoodyFacilityRatingAdjusted
		, c.CreatedOn, c.CreatedBy, c.LastUpdatedOn, c.LastUpdatedBy,
		moodycashflowratingadjusted.RatingDesc AS MoodyCashFlowRatingAdjusted,
		ROW_NUMBER() OVER (PARTITION BY SecurityId ORDER BY DateId DESC) AS RowNumber
	FROM	CLO.Calculation c WITH (NOLOCK)
	LEFT JOIN CLO.Rating moodyfacilityratingadjusted WITH (NOLOCK) ON moodyfacilityratingadjusted.RatingId = c.MoodyFacilityRatingAdjustedId
	LEFT JOIN CLO.Rating moodycashflowratingadjusted (NOLOCK) ON moodycashflowratingadjusted.RatingId = c.[MoodyCashFlowRatingAdjustedId]
	WHERE	DateId = CLO.GetPrevDayDateId();


GO
