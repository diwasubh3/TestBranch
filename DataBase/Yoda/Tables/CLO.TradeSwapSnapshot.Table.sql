USE [Yoda]
GO
ALTER TABLE [CLO].[TradeSwapSnapshot] DROP CONSTRAINT [FK__TradeSwap__Trade__1F4E99FE]
GO
ALTER TABLE [CLO].[TradeSwapSnapshot] DROP CONSTRAINT [FK__TradeSwap__SellS__1E5A75C5]
GO
ALTER TABLE [CLO].[TradeSwapSnapshot] DROP CONSTRAINT [FK__TradeSwap__SellF__1D66518C]
GO
ALTER TABLE [CLO].[TradeSwapSnapshot] DROP CONSTRAINT [FK__TradeSwap__BuySe__1C722D53]
GO
ALTER TABLE [CLO].[TradeSwapSnapshot] DROP CONSTRAINT [FK__TradeSwap__BuyFu__1B7E091A]
GO
ALTER TABLE [CLO].[TradeSwapSnapshot] DROP CONSTRAINT [DF__tmp_ms_xx__Creat__28C3C0F6]
GO
/****** Object:  Table [CLO].[TradeSwapSnapshot]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[TradeSwapSnapshot]
GO
/****** Object:  Table [CLO].[TradeSwapSnapshot]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[TradeSwapSnapshot](
	[TradeSwapSnapshotId] [bigint] IDENTITY(1,1) NOT NULL,
	[TradeSwapId] [int] NOT NULL,
	[SellSecurityId] [int] NOT NULL,
	[SellFundId] [int] NOT NULL,
	[SellExposure] [decimal](38, 10) NULL,
	[SellTotalExposure] [decimal](38, 10) NULL,
	[SellSecurityBidPrice] [decimal](38, 10) NULL,
	[SellPctPosition] [decimal](38, 10) NULL,
	[SellSpread] [decimal](38, 10) NULL,
	[SellLiquidityScore] [decimal](38, 10) NULL,
	[SellMaturityDate] [datetime] NULL,
	[SellIssuer] [varchar](100) NULL,
	[SellFacility] [varchar](100) NULL,
	[SellMoodyAdjCFR] [varchar](100) NULL,
	[SellMoodyAdjFacility] [varchar](100) NULL,
	[BuySecurityId] [int] NOT NULL,
	[BuySecurityOfferPrice] [decimal](38, 10) NULL,
	[BuyFundId] [int] NOT NULL,
	[BuyExposure] [decimal](38, 10) NULL,
	[BuyTotalExposure] [decimal](38, 10) NULL,
	[BuyPctPosition] [decimal](38, 10) NULL,
	[BuySpread] [decimal](38, 10) NULL,
	[BuyLiquidityScore] [decimal](38, 10) NULL,
	[BuyMaturityDate] [datetime] NULL,
	[BuyIssuer] [varchar](100) NULL,
	[BuyFacility] [varchar](100) NULL,
	[BuyMoodyAdjCFR] [varchar](100) NULL,
	[BuyMoodyAdjFacility] [varchar](100) NULL,
	[SellRecovery] [decimal](38, 10) NULL,
	[BuyRecovery] [decimal](38, 10) NULL,
	[SellYield] [decimal](38, 10) NULL,
	[BuyYield] [decimal](38, 10) NULL,
	[BuySecurityBidPrice] [decimal](38, 10) NULL,
	[SellSecurityOfferPrice] [decimal](38, 10) NULL,
	[BuySecurityCreditScore] [decimal](38, 10) NULL,
	[SellSecurityCreditScore] [decimal](38, 10) NULL,
	[CreatedOn] [datetime] NULL,
 CONSTRAINT [PK_TradeSwappingSnapshot] PRIMARY KEY CLUSTERED 
(
	[TradeSwapId] ASC,
	[SellFundId] ASC,
	[SellSecurityId] ASC,
	[BuySecurityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[TradeSwapSnapshot] ADD  CONSTRAINT [DF__tmp_ms_xx__Creat__28C3C0F6]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [CLO].[TradeSwapSnapshot]  WITH CHECK ADD FOREIGN KEY([BuyFundId])
REFERENCES [CLO].[Fund] ([FundId])
GO
ALTER TABLE [CLO].[TradeSwapSnapshot]  WITH CHECK ADD FOREIGN KEY([BuySecurityId])
REFERENCES [CLO].[Security] ([SecurityId])
GO
ALTER TABLE [CLO].[TradeSwapSnapshot]  WITH CHECK ADD FOREIGN KEY([SellFundId])
REFERENCES [CLO].[Fund] ([FundId])
GO
ALTER TABLE [CLO].[TradeSwapSnapshot]  WITH CHECK ADD FOREIGN KEY([SellSecurityId])
REFERENCES [CLO].[Security] ([SecurityId])
GO
ALTER TABLE [CLO].[TradeSwapSnapshot]  WITH CHECK ADD FOREIGN KEY([TradeSwapId])
REFERENCES [CLO].[TradeSwap] ([TradeSwapId])
GO
