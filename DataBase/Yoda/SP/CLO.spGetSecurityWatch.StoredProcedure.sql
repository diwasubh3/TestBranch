USE [Yoda]
GO
/****** Object:  StoredProcedure [CLO].[spGetSecurityWatch]    Script Date: 7/2/2021 5:14:36 AM ******/
DROP PROCEDURE [CLO].[spGetSecurityWatch]
GO
/****** Object:  StoredProcedure [CLO].[spGetSecurityWatch]    Script Date: 7/2/2021 5:14:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CLO].[spGetSecurityWatch]
	@paramSecurityIds [IntegerArray] READONLY
AS

SELECT 
	s.*
    FROM  [CLO].vw_Security_Watch s  with(nolock) 
	WHERE 
	s.SecurityId IN (SELECT [value] FROM @paramSecurityIds)

RETURN 0

GO
