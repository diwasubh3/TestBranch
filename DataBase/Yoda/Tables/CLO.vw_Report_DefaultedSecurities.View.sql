USE [Yoda]
GO
/****** Object:  View [CLO].[vw_Report_DefaultedSecurities]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP VIEW [CLO].[vw_Report_DefaultedSecurities]
GO
/****** Object:  View [CLO].[vw_Report_DefaultedSecurities]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [CLO].[vw_Report_DefaultedSecurities]
AS 
SELECT sec.SecurityDesc,ds.Exposure,ds.Bid,ds.DefaultDate,ds.FundId,ds.DateId FROM CLO.vw_DefaultSecurities ds
JOIN clo.Security sec ON sec.SecurityId = ds.SecurityId
WHERE ds.DateId = CLO.GetPrevDayDateId()


GO
