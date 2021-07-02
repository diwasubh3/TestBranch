USE [Yoda]
GO
ALTER TABLE [CLO].[Calculation] DROP CONSTRAINT [FK__Calculati__Secur__5F691F13]
GO
ALTER TABLE [CLO].[Calculation] DROP CONSTRAINT [FK__Calculati__Moody__5E74FADA]
GO
ALTER TABLE [CLO].[Calculation] DROP CONSTRAINT [FK__Calculati__Moody__5D80D6A1]
GO
ALTER TABLE [CLO].[Calculation] DROP CONSTRAINT [FK__Calculati__FundI__5C8CB268]
GO
ALTER TABLE [CLO].[Calculation] DROP CONSTRAINT [DF__tmp_ms_xx__LastU__6C24C70A]
GO
ALTER TABLE [CLO].[Calculation] DROP CONSTRAINT [DF__tmp_ms_xx__Creat__6B30A2D1]
GO
/****** Object:  Table [CLO].[Calculation]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[Calculation]
GO
/****** Object:  Table [CLO].[Calculation]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[Calculation](
	[CalculationId] [int] IDENTITY(1,1) NOT NULL,
	[DateId] [int] NOT NULL,
	[SecurityId] [int] NOT NULL,
	[FundId] [int] NOT NULL,
	[YieldBid] [numeric](32, 4) NULL,
	[YieldOffer] [numeric](32, 4) NULL,
	[YieldMid] [numeric](32, 4) NULL,
	[CappedYieldBid] [numeric](32, 4) NULL,
	[CappedYieldOffer] [numeric](32, 4) NULL,
	[CappedYieldMid] [numeric](32, 4) NULL,
	[TargetYieldBid] [numeric](32, 4) NULL,
	[TargetYieldOffer] [numeric](32, 4) NULL,
	[TargetYieldMid] [numeric](32, 4) NULL,
	[BetterWorseBid] [numeric](32, 4) NULL,
	[BetterWorseOffer] [numeric](32, 4) NULL,
	[BetterWorseMid] [numeric](32, 4) NULL,
	[TotalCoupon] [numeric](32, 4) NULL,
	[WARF] [numeric](32, 4) NULL,
	[WARFRecovery] [numeric](32, 4) NULL,
	[Life] [numeric](32, 4) NULL,
	[TotalPar] [numeric](32, 4) NULL,
	[MoodyFacilityRatingAdjustedId] [smallint] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[LastUpdatedOn] [datetime] NULL,
	[LastUpdatedBy] [varchar](100) NULL,
	[MatrixImpliedSpread] [decimal](32, 8) NULL,
	[MatrixWARFRecovery] [numeric](32, 4) NULL,
	[zSnPAssetRecoveryRating] [varchar](2) NULL,
	[SnpWarf] [numeric](32, 8) NULL,
	[SnpLgd] [numeric](32, 8) NULL,
	[MoodysLgd] [numeric](32, 8) NULL,
	[YieldAvgLgd] [numeric](32, 8) NULL,
	[SnpAAARecovery] [numeric](32, 8) NULL,
	[SnPIssuerRatingAdjusted] [varchar](5) NULL,
	[MoodyCashFlowRatingAdjustedId] [smallint] NULL,
 CONSTRAINT [PK__tmp_ms_x__2D89A6FF475E231F] PRIMARY KEY CLUSTERED 
(
	[DateId] ASC,
	[FundId] ASC,
	[SecurityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[Calculation] ADD  CONSTRAINT [DF__tmp_ms_xx__Creat__6B30A2D1]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [CLO].[Calculation] ADD  CONSTRAINT [DF__tmp_ms_xx__LastU__6C24C70A]  DEFAULT (getdate()) FOR [LastUpdatedOn]
GO
ALTER TABLE [CLO].[Calculation]  WITH CHECK ADD FOREIGN KEY([FundId])
REFERENCES [CLO].[Fund] ([FundId])
GO
ALTER TABLE [CLO].[Calculation]  WITH CHECK ADD FOREIGN KEY([MoodyFacilityRatingAdjustedId])
REFERENCES [CLO].[Rating] ([RatingId])
GO
ALTER TABLE [CLO].[Calculation]  WITH CHECK ADD FOREIGN KEY([MoodyCashFlowRatingAdjustedId])
REFERENCES [CLO].[Rating] ([RatingId])
GO
ALTER TABLE [CLO].[Calculation]  WITH CHECK ADD FOREIGN KEY([SecurityId])
REFERENCES [CLO].[Security] ([SecurityId])
GO
