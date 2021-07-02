USE [Yoda]
GO
/****** Object:  View [CLO].[vw_PriceMove]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP VIEW [CLO].[vw_PriceMove]
GO
/****** Object:  View [CLO].[vw_PriceMove]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [CLO].[vw_PriceMove]
	AS 
	
	SELECT cast( null as varchar(100)) Issuer,
		   cast(null as numeric(38,10)) [TotalPar],
		   cast(null as numeric(38,10)) [PriceMove],
		   cast(null as numeric(38,10)) [Bid],
		   cast(null as numeric(38,10)) [CostPrice],
		   cast(null as varchar(20)) [MoodyCFR]

GO
