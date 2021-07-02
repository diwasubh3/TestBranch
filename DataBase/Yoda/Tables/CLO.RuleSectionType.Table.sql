USE [Yoda]
GO
/****** Object:  Table [CLO].[RuleSectionType]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[RuleSectionType]
GO
/****** Object:  Table [CLO].[RuleSectionType]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[RuleSectionType](
	[RuleSectionTypeId] [smallint] IDENTITY(1,1) NOT NULL,
	[RuleSectionName] [varchar](100) NULL,
 CONSTRAINT [PK__RuleSect__E2B7F3C13ED4B839] PRIMARY KEY CLUSTERED 
(
	[RuleSectionTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
