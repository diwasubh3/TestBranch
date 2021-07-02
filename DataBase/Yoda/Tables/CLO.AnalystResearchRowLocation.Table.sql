USE [Yoda]
GO
ALTER TABLE [CLO].[AnalystResearchRowLocation] DROP CONSTRAINT [DF__AnalystRe__LastU__20B88ADA]
GO
ALTER TABLE [CLO].[AnalystResearchRowLocation] DROP CONSTRAINT [DF__AnalystRe__Creat__1FC466A1]
GO
/****** Object:  Table [CLO].[AnalystResearchRowLocation]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[AnalystResearchRowLocation]
GO
/****** Object:  Table [CLO].[AnalystResearchRowLocation]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[AnalystResearchRowLocation](
	[AnalystResearchRowLocationId] [int] IDENTITY(1,1) NOT NULL,
	[RowIndex] [int] NOT NULL,
	[ClassName] [varchar](255) NOT NULL,
	[PropertyName] [varchar](255) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NULL,
	[LastUpdatedOn] [datetime] NOT NULL,
	[LastUpdatedBy] [varchar](100) NULL,
 CONSTRAINT [PK__AnalystR__CBDAC300CD358BAE] PRIMARY KEY CLUSTERED 
(
	[AnalystResearchRowLocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_AnalystResearchRowLocation_ClassPropertyName] UNIQUE NONCLUSTERED 
(
	[ClassName] ASC,
	[PropertyName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[AnalystResearchRowLocation] ADD  CONSTRAINT [DF__AnalystRe__Creat__1FC466A1]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [CLO].[AnalystResearchRowLocation] ADD  CONSTRAINT [DF__AnalystRe__LastU__20B88ADA]  DEFAULT (getdate()) FOR [LastUpdatedOn]
GO
