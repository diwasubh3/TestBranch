USE [Yoda]
GO
ALTER TABLE [CLO].[AnalystResearchImportLog] DROP CONSTRAINT [DF__AnalystRe__Creat__24891BBE]
GO
ALTER TABLE [CLO].[AnalystResearchImportLog] DROP CONSTRAINT [DF__AnalystRe__Proce__2394F785]
GO
/****** Object:  Table [CLO].[AnalystResearchImportLog]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[AnalystResearchImportLog]
GO
/****** Object:  Table [CLO].[AnalystResearchImportLog]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[AnalystResearchImportLog](
	[AnalystResearchImportLogId] [int] IDENTITY(1,1) NOT NULL,
	[AnalystResearchFileName] [varchar](400) NOT NULL,
	[SheetName] [varchar](255) NOT NULL,
	[IssuerName] [varchar](255) NULL,
	[Processed] [bit] NOT NULL,
	[ImportError] [varchar](255) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NULL,
 CONSTRAINT [PK__AnalystR__B3C3AEC0D3A74607] PRIMARY KEY CLUSTERED 
(
	[AnalystResearchImportLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[AnalystResearchImportLog] ADD  CONSTRAINT [DF__AnalystRe__Proce__2394F785]  DEFAULT ((0)) FOR [Processed]
GO
ALTER TABLE [CLO].[AnalystResearchImportLog] ADD  CONSTRAINT [DF__AnalystRe__Creat__24891BBE]  DEFAULT (getdate()) FOR [CreatedOn]
GO
