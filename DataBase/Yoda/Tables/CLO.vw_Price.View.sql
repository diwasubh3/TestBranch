USE [Yoda]
GO
/****** Object:  View [CLO].[vw_Price]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP VIEW [CLO].[vw_Price]
GO
/****** Object:  View [CLO].[vw_Price]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [CLO].[vw_Price]  WITH SCHEMABINDING 
	AS 
	
	with pricing_cfe 
	as (
	SELECT 
	
	   [PricingId]
      ,[DateId]
      ,[SecurityId]
      ,[Bid]
      ,[Offer]
      ,[CreatedOn]
      ,[CreatedBy]
      ,[LastUpdatedOn]
      ,[LastUpdatedBy] 
	  ,ROW_NUMBER() OVER ( PARTITION BY SecurityId
                                                ORDER BY DateId DESC,createdon desc ) AS RowNum	
	FROM CLO.Pricing with(nolock))

	select DateId,SecurityId,Bid,Offer from pricing_cfe where RowNum = 1

GO
