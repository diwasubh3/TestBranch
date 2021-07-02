USE [Yoda]
GO
ALTER TABLE [CLO].[AnalystResearch] DROP CONSTRAINT [FK__AnalystRe__Issue__59B045BD]
GO
ALTER TABLE [CLO].[AnalystResearch] DROP CONSTRAINT [FK__AnalystRe__HFAna__58BC2184]
GO
ALTER TABLE [CLO].[AnalystResearch] DROP CONSTRAINT [FK__AnalystRe__CLOAn__57C7FD4B]
GO
ALTER TABLE [CLO].[AnalystResearch] DROP CONSTRAINT [DF__AnalystRe__LastU__72E607DB]
GO
ALTER TABLE [CLO].[AnalystResearch] DROP CONSTRAINT [DF__AnalystRe__Creat__71F1E3A2]
GO
/****** Object:  Table [CLO].[AnalystResearch]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[AnalystResearch]
GO
/****** Object:  Table [CLO].[AnalystResearch]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[AnalystResearch](
	[AnalystResearchId] [bigint] IDENTITY(1,1) NOT NULL,
	[IssuerId] [int] NOT NULL,
	[CLOAnalystUserId] [int] NULL,
	[HFAnalystUserId] [int] NULL,
	[AsOfDate] [datetime] NULL,
	[CreditScore] [numeric](10, 4) NULL,
	[LiquidityScore] [numeric](10, 4) NULL,
	[OneLLeverage] [numeric](10, 4) NULL,
	[TotalLeverage] [numeric](10, 4) NULL,
	[EVMultiple] [numeric](10, 4) NULL,
	[LTMRevenues] [numeric](38, 4) NULL,
	[LTMEBITDA] [numeric](38, 4) NULL,
	[FCF] [numeric](38, 4) NULL,
	[Comments] [varchar](max) NULL,
	[BusinessDescription] [varchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[LastUpdatedOn] [datetime] NULL,
	[LastUpdatedBy] [varchar](100) NULL,
	[AgentBank] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[AnalystResearchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_AnalystResearch_IssuerId_AsOfDate] UNIQUE NONCLUSTERED 
(
	[IssuerId] ASC,
	[AsOfDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[AnalystResearch] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [CLO].[AnalystResearch] ADD  DEFAULT (getdate()) FOR [LastUpdatedOn]
GO
ALTER TABLE [CLO].[AnalystResearch]  WITH CHECK ADD FOREIGN KEY([CLOAnalystUserId])
REFERENCES [CLO].[User] ([UserId])
GO
ALTER TABLE [CLO].[AnalystResearch]  WITH CHECK ADD FOREIGN KEY([HFAnalystUserId])
REFERENCES [CLO].[User] ([UserId])
GO
ALTER TABLE [CLO].[AnalystResearch]  WITH CHECK ADD FOREIGN KEY([IssuerId])
REFERENCES [CLO].[Issuer] ([IssuerId])
GO
