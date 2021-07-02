USE [Yoda]
GO
ALTER TABLE [CLO].[WSOMarketData] DROP CONSTRAINT [FK__WSOMarket__SnPRe__29CC2871]
GO
ALTER TABLE [CLO].[WSOMarketData] DROP CONSTRAINT [FK__WSOMarket__SnPIs__28D80438]
GO
ALTER TABLE [CLO].[WSOMarketData] DROP CONSTRAINT [FK__WSOMarket__SnPIs__27E3DFFF]
GO
ALTER TABLE [CLO].[WSOMarketData] DROP CONSTRAINT [FK__WSOMarket__SnPfa__26EFBBC6]
GO
ALTER TABLE [CLO].[WSOMarketData] DROP CONSTRAINT [FK__WSOMarket__SnPFa__25FB978D]
GO
ALTER TABLE [CLO].[WSOMarketData] DROP CONSTRAINT [FK__WSOMarket__Secur__25077354]
GO
ALTER TABLE [CLO].[WSOMarketData] DROP CONSTRAINT [FK__WSOMarket__Moody__24134F1B]
GO
ALTER TABLE [CLO].[WSOMarketData] DROP CONSTRAINT [FK__WSOMarket__Moody__231F2AE2]
GO
ALTER TABLE [CLO].[WSOMarketData] DROP CONSTRAINT [FK__WSOMarket__Moody__222B06A9]
GO
ALTER TABLE [CLO].[WSOMarketData] DROP CONSTRAINT [FK__WSOMarket__FundI__2136E270]
GO
ALTER TABLE [CLO].[WSOMarketData] DROP CONSTRAINT [DF__WSOMarket__LastU__54A24334]
GO
ALTER TABLE [CLO].[WSOMarketData] DROP CONSTRAINT [DF__WSOMarket__Creat__53AE1EFB]
GO
ALTER TABLE [CLO].[WSOMarketData] DROP CONSTRAINT [DF__WSOMarket__SnPWa__52B9FAC2]
GO
ALTER TABLE [CLO].[WSOMarketData] DROP CONSTRAINT [DF__WSOMarket__Moody__51C5D689]
GO
ALTER TABLE [CLO].[WSOMarketData] DROP CONSTRAINT [DF__WSOMarket__Moody__50D1B250]
GO
/****** Object:  Table [CLO].[WSOMarketData]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[WSOMarketData]
GO
/****** Object:  Table [CLO].[WSOMarketData]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[WSOMarketData](
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
 CONSTRAINT [PK__WSOMarke__2D89A6FFE7C92B23] PRIMARY KEY CLUSTERED 
(
	[DateId] ASC,
	[FundId] ASC,
	[SecurityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[WSOMarketData] ADD  CONSTRAINT [DF__WSOMarket__Moody__50D1B250]  DEFAULT ('0') FOR [MoodyOutlook]
GO
ALTER TABLE [CLO].[WSOMarketData] ADD  CONSTRAINT [DF__WSOMarket__Moody__51C5D689]  DEFAULT ('0') FOR [MoodyWatch]
GO
ALTER TABLE [CLO].[WSOMarketData] ADD  CONSTRAINT [DF__WSOMarket__SnPWa__52B9FAC2]  DEFAULT ('0') FOR [SnPWatch]
GO
ALTER TABLE [CLO].[WSOMarketData] ADD  CONSTRAINT [DF__WSOMarket__Creat__53AE1EFB]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [CLO].[WSOMarketData] ADD  CONSTRAINT [DF__WSOMarket__LastU__54A24334]  DEFAULT (getdate()) FOR [LastUpdatedOn]
GO
ALTER TABLE [CLO].[WSOMarketData]  WITH CHECK ADD FOREIGN KEY([FundId])
REFERENCES [CLO].[Fund] ([FundId])
GO
ALTER TABLE [CLO].[WSOMarketData]  WITH CHECK ADD FOREIGN KEY([MoodyCashFlowRatingId])
REFERENCES [CLO].[Rating] ([RatingId])
GO
ALTER TABLE [CLO].[WSOMarketData]  WITH CHECK ADD FOREIGN KEY([MoodyCashFlowRatingAdjustedId])
REFERENCES [CLO].[Rating] ([RatingId])
GO
ALTER TABLE [CLO].[WSOMarketData]  WITH CHECK ADD FOREIGN KEY([MoodyFacilityRatingId])
REFERENCES [CLO].[Rating] ([RatingId])
GO
ALTER TABLE [CLO].[WSOMarketData]  WITH CHECK ADD FOREIGN KEY([SecurityId])
REFERENCES [CLO].[Security] ([SecurityId])
GO
ALTER TABLE [CLO].[WSOMarketData]  WITH CHECK ADD FOREIGN KEY([SnPFacilityRatingId])
REFERENCES [CLO].[Rating] ([RatingId])
GO
ALTER TABLE [CLO].[WSOMarketData]  WITH CHECK ADD FOREIGN KEY([SnPfacilityRatingAdjustedId])
REFERENCES [CLO].[Rating] ([RatingId])
GO
ALTER TABLE [CLO].[WSOMarketData]  WITH CHECK ADD FOREIGN KEY([SnPIssuerRatingId])
REFERENCES [CLO].[Rating] ([RatingId])
GO
ALTER TABLE [CLO].[WSOMarketData]  WITH CHECK ADD FOREIGN KEY([SnPIssuerRatingAdjustedId])
REFERENCES [CLO].[Rating] ([RatingId])
GO
ALTER TABLE [CLO].[WSOMarketData]  WITH CHECK ADD FOREIGN KEY([SnPRecoveryRatingId])
REFERENCES [CLO].[Rating] ([RatingId])
GO
