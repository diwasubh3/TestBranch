USE [Yoda]
GO
ALTER TABLE [CLO].[FieldGroup] DROP CONSTRAINT [DF__FieldGrou__ShowO__73DAF76B]
GO
/****** Object:  Table [CLO].[FieldGroup]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[FieldGroup]
GO
/****** Object:  Table [CLO].[FieldGroup]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[FieldGroup](
	[FieldGroupId] [smallint] IDENTITY(1,1) NOT NULL,
	[FieldGroupName] [varchar](100) NULL,
	[SortOrder] [smallint] NULL,
	[DisplayIcon] [varchar](100) NULL,
	[ShowOnPositions] [bit] NULL,
 CONSTRAINT [PK__FieldGro__18E0A8E21B933B65] PRIMARY KEY CLUSTERED 
(
	[FieldGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[FieldGroup] ADD  CONSTRAINT [DF__FieldGrou__ShowO__73DAF76B]  DEFAULT ((0)) FOR [ShowOnPositions]
GO
