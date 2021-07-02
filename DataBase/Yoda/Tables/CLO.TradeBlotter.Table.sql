USE [Yoda]
GO
/****** Object:  Table [CLO].[TradeBlotter]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[TradeBlotter]
GO
/****** Object:  Table [CLO].[TradeBlotter]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[TradeBlotter](
	[TradeId] [int] NOT NULL,
	[AssetPrimaryId] [varchar](100) NOT NULL,
	[Portfolio_Name] [varchar](100) NOT NULL,
	[Issuer_Name] [varchar](200) NOT NULL,
	[Asset_Name] [varchar](100) NOT NULL,
	[Currency] [varchar](10) NOT NULL,
	[TradeType] [varchar](50) NOT NULL,
	[TradeSettleDate] [varchar](30) NOT NULL,
	[TradeDate] [varchar](30) NOT NULL,
	[CounterBankName] [varchar](100) NOT NULL,
	[BrokerBankName] [varchar](100) NULL,
	[TradeDescription] [varchar](1000) NULL,
	[TradeAmount] [numeric](30, 5) NULL,
	[AccruedInterest] [numeric](30, 5) NOT NULL,
	[CounterParty] [varchar](100) NOT NULL,
	[CounterPartyEntity] [varchar](100) NULL,
	[CounterPartyDisplay] [varchar](100) NOT NULL,
	[IssuerDisplayName] [varchar](200) NOT NULL,
	[TradeCommissions] [numeric](28, 5) NULL,
	[TradeOriginalCommitment] [numeric](28, 5) NULL,
	[TradeOriginalParAmount] [numeric](28, 5) NULL,
 CONSTRAINT [PK_TradeBlotter] PRIMARY KEY CLUSTERED 
(
	[TradeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
