USE [Yoda]
GO
ALTER TABLE [CLO].[RuleField] DROP CONSTRAINT [FK__RuleField__RuleS__0A537D18]
GO
ALTER TABLE [CLO].[RuleField] DROP CONSTRAINT [FK__RuleField__RuleI__095F58DF]
GO
ALTER TABLE [CLO].[RuleField] DROP CONSTRAINT [FK__RuleField__Field__086B34A6]
GO
/****** Object:  Table [CLO].[RuleField]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[RuleField]
GO
/****** Object:  Table [CLO].[RuleField]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CLO].[RuleField](
	[RuleFieldId] [int] IDENTITY(1,1) NOT NULL,
	[RuleId] [smallint] NOT NULL,
	[RuleSectionTypeId] [smallint] NULL,
	[FieldId] [smallint] NOT NULL,
	[SortOrder] [smallint] NULL,
 CONSTRAINT [PK__RuleFiel__5218772996310A34] PRIMARY KEY CLUSTERED 
(
	[RuleFieldId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [CLO].[RuleField]  WITH CHECK ADD FOREIGN KEY([FieldId])
REFERENCES [CLO].[Field] ([FieldId])
GO
ALTER TABLE [CLO].[RuleField]  WITH CHECK ADD FOREIGN KEY([RuleId])
REFERENCES [CLO].[Rule] ([RuleId])
GO
ALTER TABLE [CLO].[RuleField]  WITH CHECK ADD FOREIGN KEY([RuleSectionTypeId])
REFERENCES [CLO].[RuleSectionType] ([RuleSectionTypeId])
GO
