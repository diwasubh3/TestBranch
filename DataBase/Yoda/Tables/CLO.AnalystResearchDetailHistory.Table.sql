USE [Yoda]
GO
/****** Object:  Table [CLO].[AnalystResearchDetailHistory]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[AnalystResearchDetailHistory]
GO
/****** Object:  Table [CLO].[AnalystResearchDetailHistory]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[AnalystResearchDetailHistory](
	[AnalystResearchDetailHistoryId] [int] IDENTITY(1,1) NOT NULL,
	[AnalystResearchDetailId] [int] NOT NULL,
	[AnalystResearchHeaderId] [int] NOT NULL,
	[AsOfDate] [date] NOT NULL,
	[Revenues] [numeric](38, 4) NULL,
	[YoYGrowth] [numeric](10, 4) NULL,
	[OrganicGrowth] [numeric](10, 4) NULL,
	[CashEBITDA] [numeric](38, 4) NULL,
	[Margin] [numeric](10, 4) NULL,
	[TransactionExpenses] [numeric](10, 4) NULL,
	[RestructuringAndIntegration] [numeric](10, 4) NULL,
	[Other1] [numeric](10, 4) NULL,
	[Other2] [numeric](10, 4) NULL,
	[PFEBITDA] [numeric](38, 4) NULL,
	[LTMPFEBITDA] [numeric](38, 4) NULL,
	[PFCostSaves] [numeric](10, 4) NULL,
	[PFAcquisitionAdjustment] [numeric](10, 4) NULL,
	[CovenantEBITDA] [numeric](38, 4) NULL,
	[Interest] [numeric](10, 4) NULL,
	[CashTaxes] [numeric](10, 4) NULL,
	[WorkingCapital] [numeric](38, 4) NULL,
	[RestructuringOneTime] [numeric](10, 4) NULL,
	[OCF] [numeric](38, 4) NULL,
	[CapitalExpenditures] [numeric](38, 4) NULL,
	[FCF] [numeric](38, 4) NULL,
	[ABLRCF] [numeric](38, 4) NULL,
	[FirstLienDebt] [numeric](38, 4) NULL,
	[TotalDebt] [numeric](38, 4) NULL,
	[EquityMarketCap] [numeric](38, 4) NULL,
	[Cash] [numeric](38, 4) NULL,
	[LTMRevenues] [numeric](38, 4) NULL,
	[LTMEBITDA] [numeric](38, 4) NULL,
	[LTMFCF] [numeric](38, 4) NULL,
	[SeniorLeverage] [numeric](10, 4) NULL,
	[TotalLeverage] [numeric](10, 4) NULL,
	[NetTotalLeverage] [numeric](10, 4) NULL,
	[FCFDebt] [numeric](10, 4) NULL,
	[EstimatedEnterpriseValue] [numeric](10, 4) NULL,
	[EnterpriseValue] [numeric](10, 4) NULL,
	[Comments] [varchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[LastUpdatedOn] [datetime] NULL,
	[LastUpdatedBy] [varchar](100) NULL,
	[Operation] [varchar](10) NOT NULL,
 CONSTRAINT [PK__AnalystR__E1A51D5416479CB0] PRIMARY KEY CLUSTERED 
(
	[AnalystResearchDetailHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
