USE [DataMarts]
GO
/****** Object:  Table [dbo].[WsoExtractTestResult]    Script Date: 7/2/2021 5:19:07 AM ******/
DROP TABLE [dbo].[WsoExtractTestResult]
GO
/****** Object:  Table [dbo].[WsoExtractTestResult]    Script Date: 7/2/2021 5:19:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WsoExtractTestResult](
	[ExtractTestResultKey] [int] IDENTITY(1,1) NOT NULL,
	[DateId] [int] NOT NULL,
	[DatasetKey] [int] NOT NULL,
	[DatasetId] [int] NOT NULL,
	[ReportKey] [nvarchar](255) NOT NULL,
	[Counter] [int] NOT NULL,
	[ScenarioKey] [int] NOT NULL,
	[PassFailStatus] [nvarchar](255) NULL,
	[Requirement] [nvarchar](255) NULL,
	[Outcome] [nvarchar](255) NULL,
	[Title] [nvarchar](255) NULL,
	[MarketValue] [nvarchar](255) NULL,
	[TotalCap] [nvarchar](255) NULL,
	[ScenarioName] [nvarchar](255) NULL,
	[IsRefreshed] [bit] NOT NULL,
	[RequirementRaw] [float] NULL,
	[OutcomeRaw] [float] NULL,
	[RecordSource] [text] NULL,
	[Operator] [nvarchar](255) NULL,
	[DealAggregate] [nvarchar](255) NULL,
	[DealAggregateRaw] [float] NULL,
	[ReportTotal] [varchar](255) NULL,
	[ReportTotalRaw] [float] NULL,
	[BreachDate] [datetime2](7) NULL,
 CONSTRAINT [PK_WsoExtractTestResult] PRIMARY KEY NONCLUSTERED 
(
	[ExtractTestResultKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
