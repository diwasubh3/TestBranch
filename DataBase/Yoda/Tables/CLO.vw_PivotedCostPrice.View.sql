USE [Yoda]
GO
/****** Object:  View [CLO].[vw_PivotedCostPrice]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP VIEW [CLO].[vw_PivotedCostPrice]
GO
/****** Object:  View [CLO].[vw_PivotedCostPrice]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
CREATE VIEW [CLO].[vw_PivotedCostPrice]
AS
	SELECT DateID, SecurityId, [CLO-6], [CLO-7], [CLO-8], [CLO-9]
FROM (SELECT DateID, SecurityId, FundCode, CostPrice
		FROM CLO.MarketData md WITH (NOLOCK)
		INNER JOIN CLO.fund F  ON f.fundid = md.FundId) AS s PIVOT
(MAX(CostPrice) FOR FundCode IN ([CLO-6],[CLO-7],[CLO-8],[CLO-9]) )AS pvt



GO
