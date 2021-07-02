USE [Yoda]
GO
ALTER TABLE [CLO].[StageTradeBlotter] DROP CONSTRAINT [FK__StageTrad__Trade__17AD7836]
GO
/****** Object:  Table [CLO].[StageTradeBlotter]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[StageTradeBlotter]
GO
/****** Object:  Table [CLO].[StageTradeBlotter]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[StageTradeBlotter](
	[TradeBlotterJobId] [int] NOT NULL,
	[AssetPrimaryId] [varchar](100) NOT NULL,
	[Portfolio_Name] [varchar](100) NOT NULL,
	[Issuer_Name] [varchar](200) NOT NULL,
	[Asset_Name] [varchar](100) NOT NULL,
	[Asset_SecurityID] [varchar](100) NOT NULL,
	[Asset_MaturityDate] [datetime] NULL,
	[Asset_Rate1] [numeric](28, 5) NOT NULL,
	[Asset_AssetDetail_Type] [int] NOT NULL,
	[Portfolio_EntityId] [varchar](100) NOT NULL,
	[Issuer_EntityId] [varchar](100) NULL,
	[CurrencyType_Identifier] [varchar](10) NOT NULL,
	[TradeTypeDescription] [varchar](10) NOT NULL,
	[Trade_SettleDate] [varchar](30) NOT NULL,
	[Trade_TradeDate] [varchar](30) NOT NULL,
	[Trade_AccruedInterest] [numeric](28, 10) NOT NULL,
	[CounterBank_Name] [varchar](100) NOT NULL,
	[BrokerBank_Name] [varchar](100) NULL,
	[TradeDescription] [varchar](1000) NULL,
	[Trade_Commissions] [numeric](28, 5) NULL,
	[Trade_Fees] [numeric](28, 4) NULL,
	[Trade_Amount] [numeric](28, 5) NULL,
	[Trade_ID] [int] NOT NULL,
	[Trade_AccruedPIK] [numeric](28, 5) NULL,
	[Trade_AccruedFee] [numeric](28, 5) NULL,
	[Trade_Accruals] [numeric](9, 4) NOT NULL,
	[CounterBank_EntityId] [varchar](50) NULL,
	[BrokerBank_EntityId] [varchar](50) NULL,
	[Trade_TradeGroup_ID] [int] NULL,
	[CounterCompanyFundName] [varchar](30) NULL,
	[Position_ID] [int] NOT NULL,
	[Trade_TradeGroup_DESC] [varchar](100) NULL,
	[TotalFees] [numeric](28, 5) NOT NULL,
	[AccruedInterest] [numeric](28, 5) NOT NULL,
	[TradeAmount] [numeric](28, 5) NOT NULL,
	[TotalAmount] [numeric](28, 5) NOT NULL,
	[CounterParty] [varchar](100) NOT NULL,
	[CounterPartyEntity] [varchar](100) NULL,
	[CounterParty_Display] [varchar](100) NOT NULL,
	[Issuer_DisplayName] [varchar](200) NOT NULL,
	[Trade_OriginalCommitment] [numeric](28, 5) NULL,
	[Trade_OriginalParAmount] [numeric](28, 5) NULL,
 CONSTRAINT [PK__StageTra__188EE77EF07B2E31] PRIMARY KEY CLUSTERED 
(
	[TradeBlotterJobId] ASC,
	[Trade_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[StageTradeBlotter]  WITH CHECK ADD FOREIGN KEY([TradeBlotterJobId])
REFERENCES [CLO].[TradeBlotterJob] ([Id])
GO
