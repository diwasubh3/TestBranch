USE [Yoda]
GO
ALTER TABLE [CLO].[Field] DROP CONSTRAINT [FK__Field__FieldGrou__62458BBE]
GO
ALTER TABLE [CLO].[Field] DROP CONSTRAINT [DF__Field__IsPercent__72E6D332]
GO
ALTER TABLE [CLO].[Field] DROP CONSTRAINT [DF__Field__DisplayWi__71F2AEF9]
GO
/****** Object:  Table [CLO].[Field]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[Field]
GO
/****** Object:  Table [CLO].[Field]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[Field](
	[FieldId] [smallint] IDENTITY(1,1) NOT NULL,
	[FieldGroupId] [smallint] NOT NULL,
	[FieldName] [varchar](100) NULL,
	[JsonPropertyName] [varchar](100) NULL,
	[FieldTitle] [varchar](100) NULL,
	[JsonFormatString] [varchar](200) NULL,
	[DisplayWidth] [int] NULL,
	[IsPercentage] [bit] NULL,
	[SortOrder] [decimal](18, 4) NULL,
	[FieldType] [smallint] NULL,
	[HeaderCellClass] [varchar](100) NULL,
	[CellClass] [varchar](100) NULL,
	[CellTemplate] [varchar](max) NULL,
	[Hidden] [bit] NULL,
	[PinnedLeft] [bit] NULL,
	[IsSecurityOverride] [bit] NULL,
	[ShowInFilter] [bit] NULL,
	[FilterOrder] [numeric](8, 2) NULL,
 CONSTRAINT [PK_Field] PRIMARY KEY CLUSTERED 
(
	[FieldId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[Field] ADD  CONSTRAINT [DF__Field__DisplayWi__71F2AEF9]  DEFAULT ((140)) FOR [DisplayWidth]
GO
ALTER TABLE [CLO].[Field] ADD  CONSTRAINT [DF__Field__IsPercent__72E6D332]  DEFAULT ((0)) FOR [IsPercentage]
GO
ALTER TABLE [CLO].[Field]  WITH CHECK ADD FOREIGN KEY([FieldGroupId])
REFERENCES [CLO].[FieldGroup] ([FieldGroupId])
GO
