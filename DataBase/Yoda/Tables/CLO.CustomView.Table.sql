USE [Yoda]
GO
ALTER TABLE [CLO].[CustomView] DROP CONSTRAINT [DF__CustomVie__IsDef__1472AF86]
GO
ALTER TABLE [CLO].[CustomView] DROP CONSTRAINT [DF__CustomVie__IsPub__137E8B4D]
GO
/****** Object:  Table [CLO].[CustomView]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[CustomView]
GO
/****** Object:  Table [CLO].[CustomView]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[CustomView](
	[ViewId] [int] IDENTITY(1,1) NOT NULL,
	[ViewName] [varchar](255) NOT NULL,
	[UserId] [int] NOT NULL,
	[IsPublic] [bit] NOT NULL,
	[IsDefault] [bit] NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_CustomView] PRIMARY KEY CLUSTERED 
(
	[ViewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[CustomView] ADD  CONSTRAINT [DF__CustomVie__IsPub__137E8B4D]  DEFAULT ((0)) FOR [IsPublic]
GO
ALTER TABLE [CLO].[CustomView] ADD  CONSTRAINT [DF__CustomVie__IsDef__1472AF86]  DEFAULT ((0)) FOR [IsDefault]
GO
