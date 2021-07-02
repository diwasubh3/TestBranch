USE [DataMarts]
GO
/****** Object:  View [WSO].[DatasetBatchJob]    Script Date: 7/2/2021 5:19:07 AM ******/
DROP VIEW [WSO].[DatasetBatchJob]
GO
/****** Object:  View [WSO].[DatasetBatchJob]    Script Date: 7/2/2021 5:19:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [WSO].[DatasetBatchJob]
AS
SELECT [DatasetBatchJobID]
	   --,dbo.GetDateIdFromDate(EndTime) AS DateId
      ,[DatasetID]
      ,[BatchRequestID]
      ,[BatchRequestType]
      ,[BatchStatus]
      ,[StartTime]
      ,[EndTime]
      ,[BatchRequestor]
      ,[WhenCreated]
      ,[WhoCreated]
      ,[WhereCreated]
      ,[WhenModified]
      ,[WhoModified]
      ,[WhereModified]
  FROM [WsoDatasetBatchJobs] (NOLOCK)


GO
