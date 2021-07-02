USE [Yoda]
GO
/****** Object:  Table [CLO].[FileImport]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[FileImport]
GO
/****** Object:  Table [CLO].[FileImport]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[FileImport](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FileNameMask] [varchar](1000) NOT NULL,
	[TableName] [varchar](128) NOT NULL,
	[DeleteWhereClause] [varchar](1000) NULL,
	[FileLocation] [varchar](1000) NOT NULL,
	[HasHeader] [bit] NOT NULL,
	[UseDateIdOnFileMask] [bit] NOT NULL,
	[UseDateIdOnDeleteClauseMask] [bit] NOT NULL,
 CONSTRAINT [PK__FileImpo__3214EC07D6303053] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ__FileImpo__39D775FC4281E09A] UNIQUE NONCLUSTERED 
(
	[FileNameMask] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
