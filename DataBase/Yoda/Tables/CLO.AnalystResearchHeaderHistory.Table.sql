USE [Yoda]
GO
/****** Object:  Table [CLO].[AnalystResearchHeaderHistory]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[AnalystResearchHeaderHistory]
GO
/****** Object:  Table [CLO].[AnalystResearchHeaderHistory]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[AnalystResearchHeaderHistory](
	[AnalystResearchHeaderHistoryId] [int] IDENTITY(1,1) NOT NULL,
	[AnalystResearchHeaderId] [int] NOT NULL,
	[IssuerId] [int] NOT NULL,
	[BusinessDescription] [varchar](max) NULL,
	[CLOAnalystId] [int] NULL,
	[HFAnalystId] [int] NULL,
	[CreditScore] [numeric](10, 4) NULL,
	[AgentBank] [varchar](100) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[LastUpdatedOn] [datetime] NULL,
	[LastUpdatedBy] [varchar](100) NULL,
	[Operation] [varchar](10) NOT NULL,
	[LiborCategory] [varchar](50) NULL,
	[LiborTransitionNote] [varchar](50) NULL,
 CONSTRAINT [PK__AnalystR__B0046E2CA6FFAA1B] PRIMARY KEY CLUSTERED 
(
	[AnalystResearchHeaderHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
