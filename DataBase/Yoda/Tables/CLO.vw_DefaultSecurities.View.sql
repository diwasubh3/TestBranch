USE [Yoda]
GO
/****** Object:  View [CLO].[vw_DefaultSecurities]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP VIEW [CLO].[vw_DefaultSecurities]
GO
/****** Object:  View [CLO].[vw_DefaultSecurities]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [CLO].[vw_DefaultSecurities]
AS 
SELECT Exposure = SUM(pos.Exposure), pos.FundId, sec.SecurityId,sec.SecurityCode,mkt.DateId,Bid = MAX(mkt.Bid),
DefaultDate = MAX(sec.DefaultDate)
FROM CLO.Security sec 
JOIN CLO.MarketData mkt ON mkt.SecurityId = sec.SecurityId
JOIN CLO.Position pos ON pos.SecurityId = sec.SecurityId AND pos.DateId = mkt.DateId
WHERE sec.IsInDefault = 1 
GROUP BY pos.FundId, sec.SecurityId,sec.SecurityCode,mkt.DateId

GO
