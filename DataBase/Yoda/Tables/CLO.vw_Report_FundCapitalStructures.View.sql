USE [Yoda]
GO
/****** Object:  View [CLO].[vw_Report_FundCapitalStructures]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP VIEW [CLO].[vw_Report_FundCapitalStructures]
GO
/****** Object:  View [CLO].[vw_Report_FundCapitalStructures]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [CLO].[vw_Report_FundCapitalStructures]
AS 
SELECT a.AssetClassCode,fa.Notional,Spread = NULLIF((ISNULL(fa.Spread,0)/100),0),Libor = NULLIF(ISNULL(fa.Libor,0)/100,0),fa.StartDate,fa.EndDate,r.RatingDesc,fa.FundId
,fa.[OverrideCalcSpread] 
,SpreadText= (CASE WHEN ISNULL(fa.[OverrideCalcSpread],0)=0 THEN (''+CAST(CAST(round(fa.Spread,2) AS DECIMAL(18,2)) as varchar(100))) ELSE ('FIX ' + CAST(CAST(round(fa.Spread,4) AS DECIMAL(18,4)) as varchar(100)))  END) + '%' 
,a.AssetClassId
FROM CLO.FundAssetClass fa WITH(NOLOCK)
JOIN CLO.AssetClass a WITH(NOLOCK) ON a.AssetClassId = fa.AssetClassId
JOIN CLO.Rating r ON r.RatingId = fa.MoodyRatingId

GO
