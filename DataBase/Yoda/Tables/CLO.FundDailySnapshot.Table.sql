USE [Yoda]
GO
ALTER TABLE [CLO].[FundDailySnapshot] DROP CONSTRAINT [DF__FundDaily__CanFi__5E0C7D34]
GO
ALTER TABLE [CLO].[FundDailySnapshot] DROP CONSTRAINT [DF__FundDaily__LastU__418F6EC0]
GO
ALTER TABLE [CLO].[FundDailySnapshot] DROP CONSTRAINT [DF__FundDaily__Creat__409B4A87]
GO
/****** Object:  Table [CLO].[FundDailySnapshot]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[FundDailySnapshot]
GO
/****** Object:  Table [CLO].[FundDailySnapshot]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[FundDailySnapshot](
	[DateId] [int] NOT NULL,
	[FundId] [int] NOT NULL,
	[FundCode] [varchar](100) NOT NULL,
	[FundDesc] [varchar](500) NULL,
	[PrincipalCash] [numeric](38, 10) NULL,
	[WSOLastUpdatedOn] [datetime] NULL,
	[LiabilityPar] [numeric](38, 10) NULL,
	[EquityPar] [numeric](38, 10) NULL,
	[TargetPar] [numeric](38, 10) NULL,
	[RecoveryMultiplier] [numeric](38, 10) NULL,
	[WALifeAdjustment] [numeric](38, 10) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[LastUpdatedOn] [datetime] NULL,
	[LastUpdatedBy] [varchar](100) NULL,
	[CLOFileName] [varchar](1000) NULL,
	[IsStale] [bit] NULL,
	[IsPrincipalCashStale] [bit] NULL,
	[DisplayText] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[WSOSpread] [decimal](38, 6) NULL,
	[WSOWARF] [decimal](38, 6) NULL,
	[WSOMoodyRecovery] [decimal](38, 6) NULL,
	[WSOWALife] [decimal](38, 6) NULL,
	[WSODiversity] [decimal](38, 6) NULL,
	[IsWarehouse] [bit] NULL,
	[PortfolioName] [varchar](255) NULL,
	[SortOrder] [int] NULL,
	[WALWARFAdj] [decimal](38, 6) NULL,
	[MaxWarfTrigger] [decimal](38, 6) NULL,
	[ClassEPar] [numeric](38, 10) NULL,
	[WALDate] [datetime] NULL,
	[ReInvestEndDate] [datetime] NULL,
	[WalDateAdj] [decimal](38, 6) NULL,
	[ParentFundId] [int] NULL,
	[ParentFundCode] [varchar](100) NULL,
	[CanFilter] [bit] NULL,
	[BloombergCode] [varchar](100) NULL,
	[PricingDate] [datetime] NULL,
	[MgmtFees] [decimal](33, 6) NULL,
	[OperatingExpenses] [decimal](33, 6) NULL,
	[ClosingDate] [datetime] NULL,
	[NonCallEndsDate] [datetime] NULL,
	[FinalMaturity] [datetime] NULL,
	[ProjectedEquityDistribtion] [decimal](33, 6) NULL,
 CONSTRAINT [PK_FundDailySnapshot] PRIMARY KEY CLUSTERED 
(
	[DateId] ASC,
	[FundId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[FundDailySnapshot] ADD  CONSTRAINT [DF__FundDaily__Creat__409B4A87]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [CLO].[FundDailySnapshot] ADD  CONSTRAINT [DF__FundDaily__LastU__418F6EC0]  DEFAULT (getdate()) FOR [LastUpdatedOn]
GO
ALTER TABLE [CLO].[FundDailySnapshot] ADD  CONSTRAINT [DF__FundDaily__CanFi__5E0C7D34]  DEFAULT ((1)) FOR [CanFilter]
GO
