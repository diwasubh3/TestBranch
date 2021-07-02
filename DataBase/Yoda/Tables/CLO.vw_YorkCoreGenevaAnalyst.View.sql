USE [Yoda]
GO
/****** Object:  View [CLO].[vw_YorkCoreGenevaAnalyst]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP VIEW [CLO].[vw_YorkCoreGenevaAnalyst]
GO
/****** Object:  View [CLO].[vw_YorkCoreGenevaAnalyst]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [CLO].[vw_YorkCoreGenevaAnalyst]
AS
SELECT AnalystId, AnalystTypeId, AnalystCode, AnalystDesc, AppUserId
FROM CLO.Analyst


GO
