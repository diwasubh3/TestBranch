USE [DataMarts]
GO
/****** Object:  Table [dbo].[WsoDatasetQuery]    Script Date: 7/2/2021 5:19:07 AM ******/
DROP TABLE [dbo].[WsoDatasetQuery]
GO
/****** Object:  Table [dbo].[WsoDatasetQuery]    Script Date: 7/2/2021 5:19:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WsoDatasetQuery](
	[DatasetQueryId] [int] IDENTITY(1,1) NOT NULL,
	[Watcher] [nvarchar](100) NULL,
	[DestinationTable] [nvarchar](100) NOT NULL,
	[KeyColumn] [nvarchar](100) NOT NULL,
	[Sql] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Query] PRIMARY KEY CLUSTERED 
(
	[DatasetQueryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
