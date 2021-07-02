﻿--CREATE VIEW [CLO].[vwSecurityFund]  WITH SCHEMABINDING 
--AS 
--SELECT
--	   s.[SecurityId]
--      ,s.[SecurityCode]
--      ,s.[SecurityDesc]
--      ,s.[BBGId]
--      ,s.[Issuer]
--      ,s.[Facility]
--      ,s.[CallDate]
--      ,s.[MaturityDate]
--      ,s.[SnpIndustry]
--      ,s.[MoodyIndustry]
--      ,s.[IsFloating]
--      ,s.[LienType]
--      ,s.[IssuerId]
--      ,s.[WatchId]
--      ,s.[MoodyIndustryId]
--      ,s.[IsOnWatch]
--      ,s.[WatchObjectTypeId]
--      ,s.[WatchObjectId]
--      ,s.[WatchComments]
--      ,s.[WatchLastUpdatedOn]
--      ,s.[WatchUser]
--      ,s.[OrigSecurityCode]
--      ,s.[OrigSecurityDesc]
--      ,s.[OrigBBGId]
--      ,s.[OrigIssuer]
--      ,s.[GICSIndustry]
--      ,s.[OrigFacility]
--      ,s.[OrigCallDate]
--      ,s.[OrigMaturityDate]
--      ,s.[OrigSnpIndustry]
--      ,s.[OrigMoodyIndustry]
--      ,s.[OrigIsFloating]
--      ,s.[OrigLienType]
--      ,s.[OrigMoodyFacilityRatingAdjusted]
--      ,s.[OrigMoodyCashFlowRatingAdjusted]
--      ,s.[SecurityLastUpdatedOn]
--      ,s.[SecurityLastUpdatedBy]
--      ,s.[SecurityCreatedOn]
--      ,s.[SecurityCreatedBy]
--      ,s.[SourceId]
--      ,s.[MoodyFacilityRatingAdjusted]
--      ,s.[MoodyCashFlowRatingAdjusted]
--      ,s.[HasPositions]
--	  ,f.FundId,
--f.FundCode,
--f.FundDesc,
--f.PrincipalCash,
--f.EquityPar,
--f.LiabilityPar ,
--f.TargetPar,
--f.WALifeAdjustment,
--ta.Allocation Allocation,
--ta.HasBuy HasBuy,
--ta.TotalAllocation  TotalAllocation
--FROM 
--[CLO].[vw_security] s
--CROSS JOIN [CLO].Fund f WITH(NOLOCK)
--LEFT JOIN  [CLO].[GetActiveTrades]() ta ON s.SecurityId = ta.SecurityId AND f.FundId = ta.FundId
