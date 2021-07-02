USE [Yoda]
GO
/****** Object:  StoredProcedure [CLO].[spGetPositionForSecurities]    Script Date: 7/2/2021 5:14:36 AM ******/
DROP PROCEDURE [CLO].[spGetPositionForSecurities]
GO
/****** Object:  StoredProcedure [CLO].[spGetPositionForSecurities]    Script Date: 7/2/2021 5:14:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CLO].[spGetPositionForSecurities]
	@paramFundCode VARCHAR(100) = NULL,
	@paramSecurityIds [IntegerArray] READONLY
AS

SELECT 
		   p.*
    FROM  [CLO].vw_position p  with(nolock) 

	WHERE 
	(@paramFundCode IS NULL OR p.FundCode = @paramFundCode)
	AND (p.SecurityId IN (SELECT [value] FROM @paramSecurityIds))

RETURN 0

GO
