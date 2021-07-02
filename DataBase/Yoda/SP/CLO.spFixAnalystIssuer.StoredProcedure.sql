USE [Yoda]
GO
/****** Object:  StoredProcedure [CLO].[spFixAnalystIssuer]    Script Date: 7/2/2021 5:14:36 AM ******/
DROP PROCEDURE [CLO].[spFixAnalystIssuer]
GO
/****** Object:  StoredProcedure [CLO].[spFixAnalystIssuer]    Script Date: 7/2/2021 5:14:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CLO].[spFixAnalystIssuer]
	
AS

UPDATE  a
SET a.issuerid = s.IssuerId
FROM CLO.AnalystResearch a
JOIN CLO.Issuer i on a.IssuerId = i.IssuerId
JOIN CLO.vw_Security s ON s.Issuer = i.IssuerCode
JOIN CLO.POSITION p ON p.SecurityId = s.SecurityId AND p.DateId = CLO.GetPrevDayDateId()

RETURN 0

GO
