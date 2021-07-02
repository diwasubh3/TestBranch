USE [Yoda]
GO
/****** Object:  StoredProcedure [CLO].[spRefillPositionsBasedOnPrincipalCash]    Script Date: 7/2/2021 5:14:36 AM ******/
DROP PROCEDURE [CLO].[spRefillPositionsBasedOnPrincipalCash]
GO
/****** Object:  StoredProcedure [CLO].[spRefillPositionsBasedOnPrincipalCash]    Script Date: 7/2/2021 5:14:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CLO].[spRefillPositionsBasedOnPrincipalCash]
	@fundId int = 0,
	@dateId INT
AS
	declare @positionsCount int = 0

	select @positionsCount = count(*) 
	from  [CLO].WSOPosition p with(nolock)
	where p.DateId = @dateId and p.FundId = @fundId 

	if (@positionsCount <> 0 )
	BEGIN
		
		DELETE FROM [CLO].[Position]	WHERE DateId = @dateId  and FundId = @fundId
		DELETE FROM [CLO].[MarketData]	WHERE DateId = @dateId  and FundId = @fundId

		INSERT INTO [CLO].Position  ([FundId]
           ,[SecurityId]
           ,[DateId]
           ,[MarketValue]
           ,[Exposure]
           ,[PctExposure]
           ,[PxPrice]
           ,[IsCovLite]
           ,[CountryId]
           ,[CreatedOn]
           ,[CreatedBy]
           ,[LastUpdatedOn]
           ,[LastUpdatedBy]
           ,[IsStale]
		   ,[CapitalizedInterestOrig]
		   )
		   SELECT 
		   [FundId]
           ,[SecurityId]
           ,[DateId]
           ,[MarketValue]
           ,[Exposure]
           ,[PctExposure]
           ,[PxPrice]
           ,[IsCovLite]
           ,[CountryId]
           ,[CreatedOn]
           ,[CreatedBy]
           ,[LastUpdatedOn]
           ,[LastUpdatedBy]
           ,[IsStale]
		   ,[CapitalizedInterestOrig]
		   FROM [CLO].WSOPosition WHERE DateID = @dateId AND ISNULL(IsStale,0) = 0  and FundId = @fundId

		INSERT INTO [CLO].[MarketData]
           ([DateId]
           ,[SecurityId]
           ,[FundId]
           ,[Bid]
           ,[Offer]
           ,[CostPrice]
           ,[Spread]
           ,[LiborFloor]
           ,[MoodyCashFlowRatingId]
           ,[MoodyCashFlowRatingAdjustedId]
           ,[MoodyFacilityRatingId]
           ,[MoodyRecovery]
           ,[SnPIssuerRatingId]
           ,[SnPIssuerRatingAdjustedId]
           ,[SnPFacilityRatingId]
           ,[SnPfacilityRatingAdjustedId]
           ,[SnPRecoveryRatingId]
           ,[MoodyOutlook]
           ,[MoodyWatch]
           ,[SnPWatch]
           ,[NextReportingDate]
           ,[FiscalYearEndDate]
           ,[AgentBank]
           ,[CreatedOn]
           ,[CreatedBy]
           ,[LastUpdatedOn]
           ,[LastUpdatedBy]
		   ,[IsStale]
		   )
		   SELECT 
		   [DateId]
           ,[SecurityId]
           ,[FundId]
           ,[Bid]
           ,[Offer]
           ,[CostPrice]
           ,[Spread]
           ,[LiborFloor]
           ,[MoodyCashFlowRatingId]
           ,[MoodyCashFlowRatingAdjustedId]
           ,[MoodyFacilityRatingId]
           ,[MoodyRecovery]
           ,[SnPIssuerRatingId]
           ,[SnPIssuerRatingAdjustedId]
           ,[SnPFacilityRatingId]
           ,[SnPfacilityRatingAdjustedId]
           ,[SnPRecoveryRatingId]
           ,[MoodyOutlook]
           ,[MoodyWatch]
           ,[SnPWatch]
           ,[NextReportingDate]
           ,[FiscalYearEndDate]
           ,[AgentBank]
           ,[CreatedOn]
           ,[CreatedBy]
           ,[LastUpdatedOn]
           ,[LastUpdatedBy]
		   ,[IsStale]
		FROM [CLO].WSOMarketData WHERE DateID = @dateId AND ISNULL(IsStale,0) = 0  and FundId = @fundId
			
		DELETE FROM CLO.WSOPosition		WHERE DateId = @dateId  and FundId = @fundId
		DELETE FROM CLO.WSOMarketData	WHERE DateId = @dateId  and FundId = @fundId

	END

RETURN 0

GO
