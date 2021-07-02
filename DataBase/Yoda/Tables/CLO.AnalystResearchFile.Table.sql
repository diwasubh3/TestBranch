USE [Yoda]
GO
ALTER TABLE [CLO].[AnalystResearchFile] DROP CONSTRAINT [DF__AnalystRe__LastU__1BF3D5BD]
GO
ALTER TABLE [CLO].[AnalystResearchFile] DROP CONSTRAINT [DF__AnalystRe__Creat__1AFFB184]
GO
/****** Object:  Table [CLO].[AnalystResearchFile]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[AnalystResearchFile]
GO
/****** Object:  Table [CLO].[AnalystResearchFile]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[AnalystResearchFile](
	[AnalystResearchFileId] [int] IDENTITY(1,1) NOT NULL,
	[AnalystResearchFileName] [varchar](400) NOT NULL,
	[LastFileUpdate] [datetime] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NULL,
	[LastUpdatedOn] [datetime] NOT NULL,
	[LastUpdatedBy] [varchar](100) NULL,
 CONSTRAINT [PK__AnalystR__E6FCE1AD66E3ED88] PRIMARY KEY CLUSTERED 
(
	[AnalystResearchFileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_AnalystResearchFile_AnalystResearchFileName] UNIQUE NONCLUSTERED 
(
	[AnalystResearchFileName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[AnalystResearchFile] ADD  CONSTRAINT [DF__AnalystRe__Creat__1AFFB184]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [CLO].[AnalystResearchFile] ADD  CONSTRAINT [DF__AnalystRe__LastU__1BF3D5BD]  DEFAULT (getdate()) FOR [LastUpdatedOn]
GO
