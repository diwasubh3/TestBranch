USE [Yoda]
GO
/****** Object:  StoredProcedure [CLO].[spGetAllPositionForSecurities]    Script Date: 7/2/2021 5:14:36 AM ******/
DROP PROCEDURE [CLO].[spGetAllPositionForSecurities]
GO
/****** Object:  StoredProcedure [CLO].[spGetAllPositionForSecurities]    Script Date: 7/2/2021 5:14:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CLO].[spGetAllPositionForSecurities]
	@paramSecurityIds [IntegerArray] READONLY
AS

	SELECT * FROM [CLO].[vw_AggregatePosition] with(nolock) WHERE 
	(SecurityId IN (SELECT [value] FROM @paramSecurityIds))

RETURN 0

GO
