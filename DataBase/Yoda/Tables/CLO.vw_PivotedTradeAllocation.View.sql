USE [Yoda]
GO
/****** Object:  View [CLO].[vw_PivotedTradeAllocation]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP VIEW [CLO].[vw_PivotedTradeAllocation]
GO
/****** Object:  View [CLO].[vw_PivotedTradeAllocation]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [CLO].[vw_PivotedTradeAllocation]
AS
	SELECT SecurityId, [CLO-1], [CLO-2], [CLO-3], [CLO-4], [CLO-5], [CLO-6], [CLO-7], [CLO-8], [CLO-9] 
	FROM (SELECT	Allocation, FundCode, SecurityId FROM CLO.GetActiveTrades()) AS s PIVOT
(MAX(Allocation) FOR FundCode IN ([CLO-1], [CLO-2], [CLO-3], [CLO-4], [CLO-5], [CLO-6], [CLO-7], [CLO-8], [CLO-9] )) AS pvt


GO
