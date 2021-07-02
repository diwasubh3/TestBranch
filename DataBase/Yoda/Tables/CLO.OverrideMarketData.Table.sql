USE [Yoda]
GO
ALTER TABLE [CLO].[OverrideMarketData] DROP CONSTRAINT [FK__OverrideM__SnPRe__02B25B50]
GO
ALTER TABLE [CLO].[OverrideMarketData] DROP CONSTRAINT [FK__OverrideM__SnPIs__01BE3717]
GO
ALTER TABLE [CLO].[OverrideMarketData] DROP CONSTRAINT [FK__OverrideM__SnPIs__00CA12DE]
GO
ALTER TABLE [CLO].[OverrideMarketData] DROP CONSTRAINT [FK__OverrideM__SnPfa__7FD5EEA5]
GO
ALTER TABLE [CLO].[OverrideMarketData] DROP CONSTRAINT [FK__OverrideM__SnPFa__7EE1CA6C]
GO
ALTER TABLE [CLO].[OverrideMarketData] DROP CONSTRAINT [FK__OverrideM__Secur__7DEDA633]
GO
ALTER TABLE [CLO].[OverrideMarketData] DROP CONSTRAINT [FK__OverrideM__Moody__7CF981FA]
GO
ALTER TABLE [CLO].[OverrideMarketData] DROP CONSTRAINT [FK__OverrideM__Moody__7C055DC1]
GO
ALTER TABLE [CLO].[OverrideMarketData] DROP CONSTRAINT [FK__OverrideM__Moody__7B113988]
GO
ALTER TABLE [CLO].[OverrideMarketData] DROP CONSTRAINT [FK__OverrideM__Moody__7A1D154F]
GO
ALTER TABLE [CLO].[OverrideMarketData] DROP CONSTRAINT [FK__OverrideM__FundI__7928F116]
GO
ALTER TABLE [CLO].[OverrideMarketData] DROP CONSTRAINT [DF__tmp_ms_xx__LastU__0F6E0347]
GO
ALTER TABLE [CLO].[OverrideMarketData] DROP CONSTRAINT [DF__tmp_ms_xx__Creat__0E79DF0E]
GO
/****** Object:  Table [CLO].[OverrideMarketData]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[OverrideMarketData]
GO
/****** Object:  Table [CLO].[OverrideMarketData]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[OverrideMarketData](
	[OverrideMarketDataId] [int] IDENTITY(1,1) NOT NULL,
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
	[MoodyOutlook] [varchar](1) NULL,
	[MoodyWatch] [varchar](1) NULL,
	[SnPWatch] [varchar](1) NULL,
	[NextReportingDate] [datetime] NULL,
	[FiscalYearEndDate] [datetime] NULL,
	[AgentBank] [varchar](100) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[LastUpdatedOn] [datetime] NULL,
	[LastUpdatedBy] [varchar](100) NULL,
	[SnpCreditWatch] [varchar](5) NULL,
	[LiborBaseRate] [numeric](38, 10) NULL,
	[MoodyDPRatingId] [smallint] NULL,
 CONSTRAINT [PK__tmp_ms_x__2D89A6FF58A7CFCE] PRIMARY KEY CLUSTERED 
(
	[DateId] ASC,
	[FundId] ASC,
	[SecurityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[OverrideMarketData] ADD  CONSTRAINT [DF__tmp_ms_xx__Creat__0E79DF0E]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [CLO].[OverrideMarketData] ADD  CONSTRAINT [DF__tmp_ms_xx__LastU__0F6E0347]  DEFAULT (getdate()) FOR [LastUpdatedOn]
GO
ALTER TABLE [CLO].[OverrideMarketData]  WITH CHECK ADD FOREIGN KEY([FundId])
REFERENCES [CLO].[Fund] ([FundId])
GO
ALTER TABLE [CLO].[OverrideMarketData]  WITH CHECK ADD FOREIGN KEY([MoodyCashFlowRatingId])
REFERENCES [CLO].[Rating] ([RatingId])
GO
ALTER TABLE [CLO].[OverrideMarketData]  WITH CHECK ADD FOREIGN KEY([MoodyCashFlowRatingAdjustedId])
REFERENCES [CLO].[Rating] ([RatingId])
GO
ALTER TABLE [CLO].[OverrideMarketData]  WITH CHECK ADD FOREIGN KEY([MoodyFacilityRatingId])
REFERENCES [CLO].[Rating] ([RatingId])
GO
ALTER TABLE [CLO].[OverrideMarketData]  WITH CHECK ADD FOREIGN KEY([MoodyDPRatingId])
REFERENCES [CLO].[Rating] ([RatingId])
GO
ALTER TABLE [CLO].[OverrideMarketData]  WITH CHECK ADD FOREIGN KEY([SecurityId])
REFERENCES [CLO].[Security] ([SecurityId])
GO
ALTER TABLE [CLO].[OverrideMarketData]  WITH CHECK ADD FOREIGN KEY([SnPFacilityRatingId])
REFERENCES [CLO].[Rating] ([RatingId])
GO
ALTER TABLE [CLO].[OverrideMarketData]  WITH CHECK ADD FOREIGN KEY([SnPfacilityRatingAdjustedId])
REFERENCES [CLO].[Rating] ([RatingId])
GO
ALTER TABLE [CLO].[OverrideMarketData]  WITH CHECK ADD FOREIGN KEY([SnPIssuerRatingId])
REFERENCES [CLO].[Rating] ([RatingId])
GO
ALTER TABLE [CLO].[OverrideMarketData]  WITH CHECK ADD FOREIGN KEY([SnPIssuerRatingAdjustedId])
REFERENCES [CLO].[Rating] ([RatingId])
GO
ALTER TABLE [CLO].[OverrideMarketData]  WITH CHECK ADD FOREIGN KEY([SnPRecoveryRatingId])
REFERENCES [CLO].[Rating] ([RatingId])
GO
