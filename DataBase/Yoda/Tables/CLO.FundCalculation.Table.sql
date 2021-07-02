USE [Yoda]
GO
ALTER TABLE [CLO].[FundCalculation] DROP CONSTRAINT [FK__FundCalcu__FundI__67FE6514]
GO
ALTER TABLE [CLO].[FundCalculation] DROP CONSTRAINT [DF__FundCalcu__LastU__49FA978F]
GO
ALTER TABLE [CLO].[FundCalculation] DROP CONSTRAINT [DF__FundCalcu__Creat__49067356]
GO
/****** Object:  Table [CLO].[FundCalculation]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[FundCalculation]
GO
/****** Object:  Table [CLO].[FundCalculation]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[FundCalculation](
	[FundCalculationId] [int] IDENTITY(1,1) NOT NULL,
	[DateId] [int] NOT NULL,
	[FundId] [int] NOT NULL,
	[Par] [numeric](32, 4) NULL,
	[BODPar] [numeric](32, 4) NULL,
	[Spread] [numeric](32, 4) NULL,
	[BODSpread] [numeric](32, 4) NULL,
	[TotalCoupon] [numeric](32, 4) NULL,
	[BODTotalCoupon] [numeric](32, 4) NULL,
	[WARF] [numeric](32, 4) NULL,
	[BODWARF] [numeric](32, 4) NULL,
	[MoodyRecovery] [numeric](32, 4) NULL,
	[BODMoodyRecovery] [numeric](32, 4) NULL,
	[Bid] [numeric](32, 4) NULL,
	[BODBid] [numeric](32, 4) NULL,
	[PrincipalCash] [numeric](32, 4) NULL,
	[BODPrincipalCash] [numeric](32, 4) NULL,
	[Diversity] [numeric](32, 4) NULL,
	[BODDiversity] [numeric](32, 4) NULL,
	[CleanNav] [numeric](32, 4) NULL,
	[BODCleanNav] [numeric](32, 4) NULL,
	[WAMaturityDays] [numeric](32, 4) NULL,
	[BODWAMaturityDays] [numeric](32, 4) NULL,
	[AssetPar] [numeric](32, 4) NULL,
	[PriorDayExposure] [numeric](32, 4) NULL,
	[PriorDayPrincipalCash] [numeric](32, 4) NULL,
	[MatrixImpliedSpread] [numeric](32, 8) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[LastUpdatedOn] [datetime] NULL,
	[LastUpdatedBy] [varchar](100) NULL,
	[SnpRecovery] [numeric](32, 8) NULL,
	[BBMVOC] [numeric](32, 4) NULL,
	[WALTrigger] [numeric](32, 4) NULL,
	[WALCushion] [numeric](32, 4) NULL,
	[TimeToReinvest] [numeric](32, 4) NULL,
	[TimeToNonCallEnd] [numeric](32, 4) NULL,
	[WACostOfDebt] [numeric](32, 4) NULL,
	[TotalManagementFees] [numeric](32, 4) NULL,
	[Net] [numeric](32, 4) NULL,
	[TotalDebt] [numeric](32, 4) NULL,
	[EquityLeverage] [numeric](32, 4) NULL,
	[AnnualExcessSpreadToEquity] [numeric](32, 4) NULL,
	[ClassDMVOC] [numeric](32, 4) NULL,
	[ClassEMVOC] [numeric](32, 4) NULL,
	[ClassFMVOC] [numeric](32, 4) NULL,
	[EquityNav] [numeric](32, 4) NULL,
	[B3ToAssetParPct] [numeric](32, 4) NULL,
	[BMinusToAssetParPct] [numeric](32, 4) NULL,
 CONSTRAINT [PK__FundCalc__1C162DF698612D29] PRIMARY KEY CLUSTERED 
(
	[DateId] ASC,
	[FundId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[FundCalculation] ADD  CONSTRAINT [DF__FundCalcu__Creat__49067356]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [CLO].[FundCalculation] ADD  CONSTRAINT [DF__FundCalcu__LastU__49FA978F]  DEFAULT (getdate()) FOR [LastUpdatedOn]
GO
ALTER TABLE [CLO].[FundCalculation]  WITH CHECK ADD FOREIGN KEY([FundId])
REFERENCES [CLO].[Fund] ([FundId])
GO
