USE [Yoda]
GO
ALTER TABLE [CLO].[CustomViewField] DROP CONSTRAINT [FK__CustomVie__ViewI__61516785]
GO
ALTER TABLE [CLO].[CustomViewField] DROP CONSTRAINT [FK__CustomVie__Field__605D434C]
GO
ALTER TABLE [CLO].[CustomViewField] DROP CONSTRAINT [DF__CustomVie__IsPin__1A2B88DC]
GO
/****** Object:  Table [CLO].[CustomViewField]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[CustomViewField]
GO
/****** Object:  Table [CLO].[CustomViewField]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CLO].[CustomViewField](
	[CustomViewFieldId] [int] IDENTITY(1,1) NOT NULL,
	[ViewId] [int] NOT NULL,
	[FieldId] [smallint] NOT NULL,
	[SortOrder] [int] NOT NULL,
	[IsPinned] [bit] NOT NULL,
 CONSTRAINT [PK_CustomViewField] PRIMARY KEY CLUSTERED 
(
	[CustomViewFieldId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UX_CustomViewField_ViewId_FieldId] UNIQUE NONCLUSTERED 
(
	[ViewId] ASC,
	[FieldId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [CLO].[CustomViewField] ADD  CONSTRAINT [DF__CustomVie__IsPin__1A2B88DC]  DEFAULT ((0)) FOR [IsPinned]
GO
ALTER TABLE [CLO].[CustomViewField]  WITH CHECK ADD FOREIGN KEY([FieldId])
REFERENCES [CLO].[Field] ([FieldId])
GO
ALTER TABLE [CLO].[CustomViewField]  WITH CHECK ADD FOREIGN KEY([ViewId])
REFERENCES [CLO].[CustomView] ([ViewId])
GO
