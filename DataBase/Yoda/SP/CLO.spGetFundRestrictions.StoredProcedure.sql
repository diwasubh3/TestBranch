USE [Yoda]
GO
/****** Object:  StoredProcedure [CLO].[spGetFundRestrictions]    Script Date: 7/2/2021 5:14:36 AM ******/
DROP PROCEDURE [CLO].[spGetFundRestrictions]
GO
/****** Object:  StoredProcedure [CLO].[spGetFundRestrictions]    Script Date: 7/2/2021 5:14:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CLO].[spGetFundRestrictions]
	@paramFundId INT = NULL
AS
	
	SELECT * FROM CLO.FundRestriction with(nolock) WHERE @paramFundId IS NULL OR FundId = @paramFundId
	
RETURN 0

GO
