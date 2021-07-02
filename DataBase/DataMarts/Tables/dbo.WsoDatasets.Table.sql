USE [DataMarts]
GO
ALTER TABLE [dbo].[WsoDatasets] DROP CONSTRAINT [FK_WsoDatasets_WsoDatasetBatchJobs]
GO
ALTER TABLE [dbo].[WsoDatasets] DROP CONSTRAINT [DF_WsoDatasets_IsManualMode]
GO
ALTER TABLE [dbo].[WsoDatasets] DROP CONSTRAINT [DF_WsoDatasets_ParentDatasetID]
GO
ALTER TABLE [dbo].[WsoDatasets] DROP CONSTRAINT [DF_WsoDatasets_WhereModified]
GO
ALTER TABLE [dbo].[WsoDatasets] DROP CONSTRAINT [DF_WsoDatasets_WhenModified]
GO
ALTER TABLE [dbo].[WsoDatasets] DROP CONSTRAINT [DF_WsoDatasets_WhereCreated]
GO
ALTER TABLE [dbo].[WsoDatasets] DROP CONSTRAINT [DF_WsoDatasets_WhenCreated]
GO
ALTER TABLE [dbo].[WsoDatasets] DROP CONSTRAINT [DF_WsoDatasets_ClientID]
GO
ALTER TABLE [dbo].[WsoDatasets] DROP CONSTRAINT [DF_WsoDatasets_Status]
GO
ALTER TABLE [dbo].[WsoDatasets] DROP CONSTRAINT [DF_WsoDatasets_DealID]
GO
/****** Object:  Table [dbo].[WsoDatasets]    Script Date: 7/2/2021 5:19:07 AM ******/
DROP TABLE [dbo].[WsoDatasets]
GO
/****** Object:  Table [dbo].[WsoDatasets]    Script Date: 7/2/2021 5:19:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WsoDatasets](
	[DatasetKey] [int] IDENTITY(1,1) NOT NULL,
	[DatasetBatchJobId] [int] NOT NULL,
	[DatasetID] [int] NOT NULL,
	[DealID] [int] NOT NULL,
	[AsOfDate] [datetime] NOT NULL,
	[Title] [varchar](255) NULL,
	[Description] [varchar](255) NULL,
	[Status] [int] NULL,
	[StatusOwner] [varchar](50) NULL,
	[CompanyID] [int] NULL,
	[WhenCreated] [datetime2](7) NULL,
	[WhoCreated] [varchar](50) NULL,
	[WhereCreated] [varchar](50) NULL,
	[WhenModified] [datetime2](7) NULL,
	[WhoModified] [varchar](50) NULL,
	[WhereModified] [varchar](50) NULL,
	[ParentDatasetID] [int] NULL,
	[IsManualMode] [bit] NULL,
 CONSTRAINT [PK_Datasets] PRIMARY KEY NONCLUSTERED 
(
	[DatasetKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[WsoDatasets] ADD  CONSTRAINT [DF_WsoDatasets_DealID]  DEFAULT ((0)) FOR [DealID]
GO
ALTER TABLE [dbo].[WsoDatasets] ADD  CONSTRAINT [DF_WsoDatasets_Status]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[WsoDatasets] ADD  CONSTRAINT [DF_WsoDatasets_ClientID]  DEFAULT ((1)) FOR [CompanyID]
GO
ALTER TABLE [dbo].[WsoDatasets] ADD  CONSTRAINT [DF_WsoDatasets_WhenCreated]  DEFAULT (getdate()) FOR [WhenCreated]
GO
ALTER TABLE [dbo].[WsoDatasets] ADD  CONSTRAINT [DF_WsoDatasets_WhereCreated]  DEFAULT (host_name()) FOR [WhereCreated]
GO
ALTER TABLE [dbo].[WsoDatasets] ADD  CONSTRAINT [DF_WsoDatasets_WhenModified]  DEFAULT (getdate()) FOR [WhenModified]
GO
ALTER TABLE [dbo].[WsoDatasets] ADD  CONSTRAINT [DF_WsoDatasets_WhereModified]  DEFAULT (host_name()) FOR [WhereModified]
GO
ALTER TABLE [dbo].[WsoDatasets] ADD  CONSTRAINT [DF_WsoDatasets_ParentDatasetID]  DEFAULT ((0)) FOR [ParentDatasetID]
GO
ALTER TABLE [dbo].[WsoDatasets] ADD  CONSTRAINT [DF_WsoDatasets_IsManualMode]  DEFAULT ((0)) FOR [IsManualMode]
GO
ALTER TABLE [dbo].[WsoDatasets]  WITH CHECK ADD  CONSTRAINT [FK_WsoDatasets_WsoDatasetBatchJobs] FOREIGN KEY([DatasetBatchJobId])
REFERENCES [dbo].[WsoDatasetBatchJobs] ([DatasetBatchJobID])
GO
ALTER TABLE [dbo].[WsoDatasets] CHECK CONSTRAINT [FK_WsoDatasets_WsoDatasetBatchJobs]
GO
