USE [Yoda]
GO
ALTER TABLE [CLO].[AnalystResearchHeader] DROP CONSTRAINT [FK__AnalystRe__Issue__5B988E2F]
GO
ALTER TABLE [CLO].[AnalystResearchHeader] DROP CONSTRAINT [DF__AnalystRe__LastU__0DA5B666]
GO
ALTER TABLE [CLO].[AnalystResearchHeader] DROP CONSTRAINT [DF__AnalystRe__Creat__0CB1922D]
GO
/****** Object:  Table [CLO].[AnalystResearchHeader]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[AnalystResearchHeader]
GO
/****** Object:  Table [CLO].[AnalystResearchHeader]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[AnalystResearchHeader](
	[AnalystResearchHeaderId] [int] IDENTITY(1,1) NOT NULL,
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
	[Sponsor] [varchar](1000) NULL,
	[LiborCategory] [varchar](50) NULL,
	[LiborTransitionNote] [varchar](1000) NULL,
 CONSTRAINT [PK__AnalystR__22252DC860AC6A6B] PRIMARY KEY CLUSTERED 
(
	[AnalystResearchHeaderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_AnalystResearchHeader_IssuerId] UNIQUE NONCLUSTERED 
(
	[IssuerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[AnalystResearchHeader] ADD  CONSTRAINT [DF__AnalystRe__Creat__0CB1922D]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [CLO].[AnalystResearchHeader] ADD  CONSTRAINT [DF__AnalystRe__LastU__0DA5B666]  DEFAULT (getdate()) FOR [LastUpdatedOn]
GO
ALTER TABLE [CLO].[AnalystResearchHeader]  WITH CHECK ADD FOREIGN KEY([IssuerId])
REFERENCES [CLO].[Issuer] ([IssuerId])
GO
