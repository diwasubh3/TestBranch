USE [Yoda]
GO
/****** Object:  View [CLO].[vw_Trade]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP VIEW [CLO].[vw_Trade]
GO
/****** Object:  View [CLO].[vw_Trade]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [CLO].[vw_Trade]
AS
	SELECT
	   t.[TradeId]
      ,t.[SecurityId]
      ,t.[DateId]
      ,t.[IsBuy]
      ,t.[TradeAmount]
      ,t.[TradePrice]
      ,t.[SellAll]
      ,t.[KeepOnBlotter]
      ,t.[BidOfferPrice]
      ,t.[Comments]
	  ,t.IsCancelled
      ,t.[CreatedOn]
      ,t.[CreatedBy]
      ,t.[LastUpdatedOn]
      ,t.[LastUpdatedBy]

	  ,s.[SecurityCode]
      ,s.[SecurityDesc]
      ,s.[BBGId]
      ,s.[Issuer]
      ,s.[Facility]
      ,s.[CallDate]
      ,s.[MaturityDate]
      ,s.[SnpIndustry]
      ,s.[MoodyIndustry]
      ,s.[IsFloating]
      ,s.[LienType]
      ,NULL [CreditScore]
      ,s.[IssuerId]
      ,s.[WatchId]
      ,s.[IsOnWatch]
      ,s.[WatchObjectTypeId]
      ,s.[WatchObjectId]
      ,s.[WatchComments]
      ,s.[WatchLastUpdatedOn]
      ,s.[WatchUser]
      ,s.[OrigSecurityCode]
      ,s.[OrigSecurityDesc]
      ,s.[OrigBBGId]
      ,s.[OrigIssuer]
      ,s.[OrigFacility]
      ,s.[OrigCallDate]
      ,s.[OrigMaturityDate]
      ,s.[OrigSnpIndustry]
      ,s.[OrigMoodyIndustry]
      ,s.[OrigIsFloating]
      ,s.[OrigLienType]
      ,NULL as [OrigCreditScore]
      ,s.[SecurityLastUpdatedOn]
      ,s.[SecurityLastUpdatedBy]
      ,s.[SourceId]

	FROM CLO.Trade t WITH(NOLOCK)
	JOIN [CLO].[vw_Security] s WITH(NOLOCK) ON s.SecurityId = t.SecurityId

GO
