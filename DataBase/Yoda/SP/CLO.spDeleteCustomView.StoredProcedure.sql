USE [Yoda]
GO
/****** Object:  StoredProcedure [CLO].[spDeleteCustomView]    Script Date: 7/2/2021 5:14:36 AM ******/
DROP PROCEDURE [CLO].[spDeleteCustomView]
GO
/****** Object:  StoredProcedure [CLO].[spDeleteCustomView]    Script Date: 7/2/2021 5:14:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [CLO].[spDeleteCustomView] @viewId INT

AS

DELETE vf FROM CLO.CustomViewField vf
INNER JOIN CLO.CustomView v ON vf.ViewId = v.ViewId
WHERE v.ViewId = @viewId

DELETE FROM CLO.CustomView
WHERE ViewId = @viewId

GO
