USE [Yoda]
GO
/****** Object:  View [CLO].[vw_Watch]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP VIEW [CLO].[vw_Watch]
GO
/****** Object:  View [CLO].[vw_Watch]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [CLO].[vw_Watch]
	AS SELECT * FROM CLO.Watch WITH(NOLOCK)

GO
