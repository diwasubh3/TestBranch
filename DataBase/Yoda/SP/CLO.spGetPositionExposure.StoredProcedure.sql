USE [Yoda]
GO
/****** Object:  StoredProcedure [CLO].[spGetPositionExposure]    Script Date: 7/2/2021 5:14:36 AM ******/
DROP PROCEDURE [CLO].[spGetPositionExposure]
GO
/****** Object:  StoredProcedure [CLO].[spGetPositionExposure]    Script Date: 7/2/2021 5:14:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CLO].[spGetPositionExposure]
	@paramSecurityId int = null
AS
	SELECT *
    FROM  [CLO].vw_Position_Exposure p  with(nolock) 
	WHERE 
	   p.SecurityId = @paramSecurityId
	order by p.FundCode

RETURN 0


GO
