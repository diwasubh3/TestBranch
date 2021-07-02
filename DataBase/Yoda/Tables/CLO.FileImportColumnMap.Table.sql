USE [Yoda]
GO
ALTER TABLE [CLO].[FileImportColumnMap] DROP CONSTRAINT [FK__FileImpor__FileI__642DD430]
GO
ALTER TABLE [CLO].[FileImportColumnMap] DROP CONSTRAINT [FK__FileImpor__FileI__6339AFF7]
GO
/****** Object:  Table [CLO].[FileImportColumnMap]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[FileImportColumnMap]
GO
/****** Object:  Table [CLO].[FileImportColumnMap]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[FileImportColumnMap](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FileImportId] [int] NOT NULL,
	[TableColumnName] [varchar](128) NOT NULL,
	[FileColumnName] [varchar](255) NULL,
	[FileColumnIndex] [int] NULL,
	[FileImportColumnTypeId] [int] NOT NULL,
 CONSTRAINT [UX_FileImportColumnMap_FileImportId_TableColumnName] UNIQUE NONCLUSTERED 
(
	[FileImportId] ASC,
	[TableColumnName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[FileImportColumnMap]  WITH CHECK ADD FOREIGN KEY([FileImportId])
REFERENCES [CLO].[FileImport] ([Id])
GO
ALTER TABLE [CLO].[FileImportColumnMap]  WITH CHECK ADD FOREIGN KEY([FileImportColumnTypeId])
REFERENCES [CLO].[FileImportColumnType] ([Id])
GO
