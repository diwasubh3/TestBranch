USE [Yoda]
GO
/****** Object:  StoredProcedure [CLO].[spGetPositions]    Script Date: 7/2/2021 5:14:36 AM ******/
DROP PROCEDURE [CLO].[spGetPositions]
GO
/****** Object:  StoredProcedure [CLO].[spGetPositions]    Script Date: 7/2/2021 5:14:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CLO].[spGetPositions]
	@paramSecurityId int = null,
	@paramSecurityCode VARCHAR(100) = NULL,
	@paramFundCode VARCHAR(100) = NULL,
	@paramOnlyWithExposures BIT = null
AS
	SELECT *
    FROM  [CLO].vw_position p  with(nolock) 
	WHERE 
	   (@paramSecurityId IS NULL OR p.SecurityId = @paramSecurityId)
	AND (@paramSecurityCode IS NULL OR p.SecurityCode = @paramSecurityCode)
	AND (@paramFundCode IS NULL OR p.FundCode = @paramFundCode)
	AND (ISNULL(@paramOnlyWithExposures,0) = 0 OR ISNULL(p.NumExposure,0) <> 0)
	
RETURN 0

GO
