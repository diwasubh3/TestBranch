USE [DataMarts]
GO
/****** Object:  Table [dbo].[WsoDatasetBatchJobs]    Script Date: 7/2/2021 5:19:07 AM ******/
DROP TABLE [dbo].[WsoDatasetBatchJobs]
GO
/****** Object:  Table [dbo].[WsoDatasetBatchJobs]    Script Date: 7/2/2021 5:19:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WsoDatasetBatchJobs](
	[DatasetBatchJobID] [int] NOT NULL,
	[DatasetID] [int] NOT NULL,
	[BatchRequestID] [int] NOT NULL,
	[BatchRequestType] [int] NOT NULL,
	[BatchStatus] [int] NOT NULL,
	[StartTime] [datetime2](7) NULL,
	[EndTime] [datetime2](7) NULL,
	[BatchRequestor] [varchar](50) NULL,
	[WhenCreated] [datetime2](7) NULL,
	[WhoCreated] [varchar](50) NULL,
	[WhereCreated] [varchar](50) NULL,
	[WhenModified] [datetime2](7) NULL,
	[WhoModified] [varchar](50) NULL,
	[WhereModified] [varchar](50) NULL,
 CONSTRAINT [PK_WsoDatasetBatchJob] PRIMARY KEY CLUSTERED 
(
	[DatasetBatchJobID] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
