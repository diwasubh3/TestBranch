USE [Yoda]
GO
/****** Object:  StoredProcedure [CLO].[spGetFundRestrictionTypes]    Script Date: 7/2/2021 5:14:36 AM ******/
DROP PROCEDURE [CLO].[spGetFundRestrictionTypes]
GO
/****** Object:  StoredProcedure [CLO].[spGetFundRestrictionTypes]    Script Date: 7/2/2021 5:14:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CLO].[spGetFundRestrictionTypes]
	
AS
	SELECT * FROM CLO.FundRestrictionType  with(nolock) 
		
RETURN 0

GO
