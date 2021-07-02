USE [DataMarts]
GO
/****** Object:  View [WSO].[ExtractTestResult]    Script Date: 7/2/2021 5:19:07 AM ******/
DROP VIEW [WSO].[ExtractTestResult]
GO
/****** Object:  View [WSO].[ExtractTestResult]    Script Date: 7/2/2021 5:19:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [WSO].[ExtractTestResult]
AS
SELECT [ExtractTestResultKey]
      ,[DateId]
      ,[DatasetKey]
      ,[DatasetId]
      ,[ReportKey]
      ,[Counter]
      ,[ScenarioKey]
      ,[PassFailStatus]
      ,[Requirement]
      ,[Outcome]
      ,[Title]
      ,[MarketValue]
      ,[TotalCap]
      ,[ScenarioName]
      ,[IsRefreshed]
      ,[RequirementRaw]
      ,[OutcomeRaw]
      ,[RecordSource]
      ,[Operator]
      ,[DealAggregate]
      ,[DealAggregateRaw]
      ,[ReportTotal]
      ,[ReportTotalRaw]
      ,[BreachDate]
  FROM [DataMarts].[dbo].[WsoExtractTestResult]

GO
