USE [Yoda]
GO
/****** Object:  StoredProcedure [CLO].[spGetFunds]    Script Date: 7/2/2021 5:14:36 AM ******/
DROP PROCEDURE [CLO].[spGetFunds]
GO
/****** Object:  StoredProcedure [CLO].[spGetFunds]    Script Date: 7/2/2021 5:14:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CLO].[spGetFunds]
	
AS
	SELECT * FROM CLO.Fund with(NOLOCK) where IsActive = 1 ORDER BY SortOrder
RETURN 0


GO
