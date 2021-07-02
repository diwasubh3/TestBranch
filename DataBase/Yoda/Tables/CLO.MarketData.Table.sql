USE [Yoda]
GO
ALTER TABLE [CLO].[MarketData] DROP CONSTRAINT [FK__MarketDat__SnPRe__764C846B]
GO
ALTER TABLE [CLO].[MarketData] DROP CONSTRAINT [FK__MarketDat__SnPIs__75586032]
GO
ALTER TABLE [CLO].[MarketData] DROP CONSTRAINT [FK__MarketDat__SnPIs__74643BF9]
GO
ALTER TABLE [CLO].[MarketData] DROP CONSTRAINT [FK__MarketDat__SnPfa__737017C0]
GO
ALTER TABLE [CLO].[MarketData] DROP CONSTRAINT [FK__MarketDat__SnPFa__727BF387]
GO
ALTER TABLE [CLO].[MarketData] DROP CONSTRAINT [FK__MarketDat__Secur__7187CF4E]
GO
ALTER TABLE [CLO].[MarketData] DROP CONSTRAINT [FK__MarketDat__Moody__7093AB15]
GO
ALTER TABLE [CLO].[MarketData] DROP CONSTRAINT [FK__MarketDat__Moody__6F9F86DC]
GO
ALTER TABLE [CLO].[MarketData] DROP CONSTRAINT [FK__MarketDat__Moody__6EAB62A3]
GO
ALTER TABLE [CLO].[MarketData] DROP CONSTRAINT [FK__MarketDat__Moody__6DB73E6A]
GO
ALTER TABLE [CLO].[MarketData] DROP CONSTRAINT [FK__MarketDat__FundI__6CC31A31]
GO
ALTER TABLE [CLO].[MarketData] DROP CONSTRAINT [DF__tmp_ms_xx__LastU__0B9D7263]
GO
ALTER TABLE [CLO].[MarketData] DROP CONSTRAINT [DF__tmp_ms_xx__Creat__0AA94E2A]
GO
ALTER TABLE [CLO].[MarketData] DROP CONSTRAINT [DF__tmp_ms_xx__SnPWa__09B529F1]
GO
ALTER TABLE [CLO].[MarketData] DROP CONSTRAINT [DF__tmp_ms_xx__Moody__08C105B8]
GO
ALTER TABLE [CLO].[MarketData] DROP CONSTRAINT [DF__tmp_ms_xx__Moody__07CCE17F]
GO
/****** Object:  Table [CLO].[MarketData]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[MarketData]
GO
/****** Object:  Table [CLO].[MarketData]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[MarketData](
	[MarketDataId] [bigint] IDENTITY(1,1) NOT NULL,
	[DateId] [int] NOT NULL,
	[SecurityId] [int] NOT NULL,
	[FundId] [int] NOT NULL,
	[Bid] [numeric](38, 10) NULL,
	[Offer] [numeric](38, 10) NULL,
	[CostPrice] [numeric](38, 10) NULL,
	[Spread] [numeric](38, 10) NULL,
	[LiborFloor] [numeric](38, 10) NULL,
	[MoodyCashFlowRatingId] [smallint] NOT NULL,
	[MoodyCashFlowRatingAdjustedId] [smallint] NOT NULL,
	[MoodyFacilityRatingId] [smallint] NULL,
	[MoodyRecovery] [numeric](18, 4) NOT NULL,
	[SnPIssuerRatingId] [smallint] NULL,
	[SnPIssuerRatingAdjustedId] [smallint] NULL,
	[SnPFacilityRatingId] [smallint] NULL,
	[SnPfacilityRatingAdjustedId] [smallint] NULL,
	[SnPRecoveryRatingId] [smallint] NULL,
	[MoodyOutlook] [varchar](1) NOT NULL,
	[MoodyWatch] [varchar](1) NOT NULL,
	[SnPWatch] [varchar](1) NOT NULL,
	[NextReportingDate] [datetime] NULL,
	[FiscalYearEndDate] [datetime] NULL,
	[AgentBank] [varchar](100) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[LastUpdatedOn] [datetime] NULL,
	[LastUpdatedBy] [varchar](100) NULL,
	[IsStale] [bit] NULL,
	[SnpCreditWatch] [varchar](5) NULL,
	[LiborBaseRate] [numeric](38, 10) NULL,
	[MoodyDPRatingId] [smallint] NULL,
 CONSTRAINT [PK__tmp_ms_x__2D89A6FF5FBE9C4E] PRIMARY KEY CLUSTERED 
(
	[DateId] ASC,
	[FundId] ASC,
	[SecurityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[MarketData] ADD  CONSTRAINT [DF__tmp_ms_xx__Moody__07CCE17F]  DEFAULT ('0') FOR [MoodyOutlook]
GO
ALTER TABLE [CLO].[MarketData] ADD  CONSTRAINT [DF__tmp_ms_xx__Moody__08C105B8]  DEFAULT ('0') FOR [MoodyWatch]
GO
ALTER TABLE [CLO].[MarketData] ADD  CONSTRAINT [DF__tmp_ms_xx__SnPWa__09B529F1]  DEFAULT ('0') FOR [SnPWatch]
GO
ALTER TABLE [CLO].[MarketData] ADD  CONSTRAINT [DF__tmp_ms_xx__Creat__0AA94E2A]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [CLO].[MarketData] ADD  CONSTRAINT [DF__tmp_ms_xx__LastU__0B9D7263]  DEFAULT (getdate()) FOR [LastUpdatedOn]
GO
ALTER TABLE [CLO].[MarketData]  WITH CHECK ADD FOREIGN KEY([FundId])
REFERENCES [CLO].[Fund] ([FundId])
GO
ALTER TABLE [CLO].[MarketData]  WITH CHECK ADD FOREIGN KEY([MoodyCashFlowRatingId])
REFERENCES [CLO].[Rating] ([RatingId])
GO
ALTER TABLE [CLO].[MarketData]  WITH CHECK ADD FOREIGN KEY([MoodyCashFlowRatingAdjustedId])
REFERENCES [CLO].[Rating] ([RatingId])
GO
ALTER TABLE [CLO].[MarketData]  WITH CHECK ADD FOREIGN KEY([MoodyFacilityRatingId])
REFERENCES [CLO].[Rating] ([RatingId])
GO
ALTER TABLE [CLO].[MarketData]  WITH CHECK ADD FOREIGN KEY([MoodyDPRatingId])
REFERENCES [CLO].[Rating] ([RatingId])
GO
ALTER TABLE [CLO].[MarketData]  WITH CHECK ADD FOREIGN KEY([SecurityId])
REFERENCES [CLO].[Security] ([SecurityId])
GO
ALTER TABLE [CLO].[MarketData]  WITH CHECK ADD FOREIGN KEY([SnPFacilityRatingId])
REFERENCES [CLO].[Rating] ([RatingId])
GO
ALTER TABLE [CLO].[MarketData]  WITH CHECK ADD FOREIGN KEY([SnPfacilityRatingAdjustedId])
REFERENCES [CLO].[Rating] ([RatingId])
GO
ALTER TABLE [CLO].[MarketData]  WITH CHECK ADD FOREIGN KEY([SnPIssuerRatingId])
REFERENCES [CLO].[Rating] ([RatingId])
GO
ALTER TABLE [CLO].[MarketData]  WITH CHECK ADD FOREIGN KEY([SnPIssuerRatingAdjustedId])
REFERENCES [CLO].[Rating] ([RatingId])
GO
ALTER TABLE [CLO].[MarketData]  WITH CHECK ADD FOREIGN KEY([SnPRecoveryRatingId])
REFERENCES [CLO].[Rating] ([RatingId])
GO
