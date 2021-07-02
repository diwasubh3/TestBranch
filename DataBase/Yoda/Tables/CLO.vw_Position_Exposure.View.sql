USE [Yoda]
GO
/****** Object:  View [CLO].[vw_Position_Exposure]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP VIEW [CLO].[vw_Position_Exposure]
GO
/****** Object:  View [CLO].[vw_Position_Exposure]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [CLO].[vw_Position_Exposure]
	AS 

	SELECT 
		   p.[PositionId] 
		  ,FORMAT(NULLIF((ISNULL(p.[Exposure],0) + ISNULL(s.Allocation,0)),0) , '#,###') [Exposure]
		  ,(ISNULL(p.[Exposure],0) + ISNULL(s.Allocation,0))  [NumExposure]
		  ,s.SecurityId
		  ,s.SecurityCode
		  ,s.FundId
		  ,s.FundCode
		  ,s.FundDesc
		  
		  ,CONVERT(varchar, CAST(m.[Bid] AS money), 1) [Bid]
		  ,CONVERT(varchar, CAST(m.[Offer] AS money), 1) [Offer]
		  ,m.[Bid] BidNum
		  ,m.[Offer] OfferNum

		  ,FORMAT(NULLIF((ISNULL(c.[TotalPar],0) + ISNULL(s.TotalAllocation,0)),0), '#,###') [TotalPar]
		  ,NULLIF((ISNULL(c.[TotalPar],0) + ISNULL(s.TotalAllocation,0)),0) [TotalParNum]
	  

    FROM  [CLO].[vw_SecurityFund] s
		  LEFT  JOIN [CLO].Position p WITH (NOLOCK) on s.SecurityId = p.SecurityId and s.FundId = p.FundId AND p.DateId = [CLO].[GetPrevDayDateId]()  AND ISNULL(s.IsStale,0) = ISNULL(p.IsStale,0)
          LEFT  JOIN [CLO].vw_MarketData m WITH (NOLOCK) ON s.SecurityId			= m.SecurityId and s.FundId = m.FundId
		  LEFT  JOIN [CLO].vw_Calculation c WITH (NOLOCK) ON s.SecurityId			= c.SecurityId and s.FundId = c.FundId

	WHERE p.DateId = [CLO].[GetPrevDayDateId]() or p.PositionId is null

GO
