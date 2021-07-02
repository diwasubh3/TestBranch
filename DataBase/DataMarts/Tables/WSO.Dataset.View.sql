USE [DataMarts]
GO
/****** Object:  View [WSO].[Dataset]    Script Date: 7/2/2021 5:19:07 AM ******/
DROP VIEW [WSO].[Dataset]
GO
/****** Object:  View [WSO].[Dataset]    Script Date: 7/2/2021 5:19:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [WSO].[Dataset]
AS
SELECT [DatasetKey]
      ,[DatasetBatchJobId]
      ,[DatasetID]
      ,[DealID]
      ,[AsOfDate]
	  ,dbo.GetDateIdFromDate([AsOfDate]) AS DateId
      ,[Title]
      ,[Description]
      ,[Status]
      ,[StatusOwner]
      ,[CompanyID]
      ,[WhenCreated]
      ,[WhoCreated]
      ,[WhereCreated]
      ,[WhenModified]
      ,[WhoModified]
      ,[WhereModified]
      ,[ParentDatasetID]
      ,[IsManualMode]
  FROM [DataMarts].[dbo].[WsoDatasets] (NOLOCK)




GO
