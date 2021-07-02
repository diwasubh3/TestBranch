USE [Yoda]
GO
/****** Object:  StoredProcedure [CLO].[spLoadFundDailySnapshot]    Script Date: 7/2/2021 5:14:36 AM ******/
DROP PROCEDURE [CLO].[spLoadFundDailySnapshot]
GO
/****** Object:  StoredProcedure [CLO].[spLoadFundDailySnapshot]    Script Date: 7/2/2021 5:14:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CLO].[spLoadFundDailySnapshot]
	@dateId int ,
	@fundId int
AS
	
	DELETE from clo.FundDailySnapshot where FundId = @fundId and DateId = @dateId

	INSERT INTO CLO.FundDailySnapshot ( 
			[DateId]
		   ,[FundId]
		   ,[FundCode]
           ,[FundDesc]
           ,[PrincipalCash]
           ,[WSOLastUpdatedOn]
           ,[LiabilityPar]
           ,[EquityPar]
           ,[TargetPar]
           ,[RecoveryMultiplier]
           ,[WALifeAdjustment]
           ,[CreatedOn]
           ,[CreatedBy]
           ,[LastUpdatedOn]
           ,[LastUpdatedBy]
           ,[CLOFileName]
           ,[IsStale]
		   ,[IsPrincipalCashStale]
           ,[DisplayText]
           ,[IsActive]
           ,[WSOSpread]
           ,[WSOWARF]
           ,[WSOMoodyRecovery]
           ,[WSOWALife]
           ,[WSODiversity]
           ,[IsWarehouse]
           ,[PortfolioName]
           ,[SortOrder]
           ,[WALWARFAdj]
           ,[MaxWarfTrigger]
           ,[ClassEPar]
           ,[WALDate]
           ,[ReInvestEndDate]
           ,[WalDateAdj]
           ,[ParentFundId]
           ,[ParentFundCode]
           ,[CanFilter]
           ,[BloombergCode]
           ,[PricingDate]
           ,[MgmtFees]
           ,[OperatingExpenses]
           ,[ClosingDate]
           ,[NonCallEndsDate]
           ,[FinalMaturity]
           ,[ProjectedEquityDistribtion]
		   
		   )
	SELECT @dateId DateId,
		   [FundId]
		   ,[FundCode]
           ,[FundDesc]
           ,[PrincipalCash]
           ,[WSOLastUpdatedOn]
           ,[LiabilityPar]
           ,[EquityPar]
           ,[TargetPar]
           ,[RecoveryMultiplier]
           ,[WALifeAdjustment]
           ,[CreatedOn]
           ,[CreatedBy]
           ,[LastUpdatedOn]
           ,[LastUpdatedBy]
           ,[CLOFileName]
           ,[IsStale]
		   ,[IsPrincipalCashStale]
           ,[DisplayText]
           ,[IsActive]
           ,[WSOSpread]
           ,[WSOWARF]
           ,[WSOMoodyRecovery]
           ,[WSOWALife]
           ,[WSODiversity]
           ,[IsWarehouse]
           ,[PortfolioName]
           ,[SortOrder]
           ,[WALWARFAdj]
           ,[MaxWarfTrigger]
           ,[ClassEPar]
           ,[WALDate]
           ,[ReInvestEndDate]
           ,[WalDateAdj]
           ,[ParentFundId]
           ,[ParentFundCode]
           ,[CanFilter]
           ,[BloombergCode]
           ,[PricingDate]
           ,[MgmtFees]
           ,[OperatingExpenses]
           ,[ClosingDate]
           ,[NonCallEndsDate]
           ,[FinalMaturity]
           ,[ProjectedEquityDistribtion]
	from CLO.Fund where FundId = @fundId		 

RETURN 0

GO
