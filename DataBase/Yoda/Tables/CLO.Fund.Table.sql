USE [Yoda]
GO
ALTER TABLE [CLO].[Fund] DROP CONSTRAINT [DF__Fund__CanFilter__2E92743C]
GO
ALTER TABLE [CLO].[Fund] DROP CONSTRAINT [DF__Fund__SortOrder__28AEB25D]
GO
ALTER TABLE [CLO].[Fund] DROP CONSTRAINT [DF__Fund__IsWarehous__3672C1CF]
GO
ALTER TABLE [CLO].[Fund] DROP CONSTRAINT [DF__tmp_ms_xx__IsAct__609E05C5]
GO
ALTER TABLE [CLO].[Fund] DROP CONSTRAINT [DF__tmp_ms_xx__LastU__5FA9E18C]
GO
ALTER TABLE [CLO].[Fund] DROP CONSTRAINT [DF__tmp_ms_xx__Creat__5EB5BD53]
GO
/****** Object:  Table [CLO].[Fund]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[Fund]
GO
/****** Object:  Table [CLO].[Fund]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[Fund](
	[FundId] [int] IDENTITY(1,1) NOT NULL,
	[FundCode] [varchar](100) NOT NULL,
	[FundDesc] [varchar](500) NULL,
	[PrincipalCash] [numeric](38, 10) NULL,
	[WSOLastUpdatedOn] [datetime] NULL,
	[LiabilityPar] [numeric](38, 10) NULL,
	[EquityPar] [numeric](38, 10) NULL,
	[TargetPar] [numeric](38, 10) NULL,
	[WALifeAdjustment] [numeric](38, 10) NULL,
	[RecoveryMultiplier] [numeric](38, 10) NULL,
	[AssetParPercentageThreshold] [numeric](18, 10) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[LastUpdatedOn] [datetime] NULL,
	[LastUpdatedBy] [varchar](100) NULL,
	[CLOFileName] [varchar](1000) NULL,
	[IsStale] [bit] NULL,
	[IsPrincipalCashStale] [bit] NULL,
	[DisplayText] [varchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[WSOSpread] [decimal](38, 6) NULL,
	[WSOWARF] [decimal](38, 6) NULL,
	[WSOMoodyRecovery] [decimal](38, 6) NULL,
	[WSOWALife] [decimal](38, 6) NULL,
	[WSODiversity] [decimal](38, 6) NULL,
	[IsWarehouse] [bit] NOT NULL,
	[PortfolioName] [varchar](255) NULL,
	[SortOrder] [int] NOT NULL,
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
 CONSTRAINT [PK__tmp_ms_x__830DFC5AE9161637] PRIMARY KEY CLUSTERED 
(
	[FundId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_FundCode] UNIQUE NONCLUSTERED 
(
	[FundCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[Fund] ADD  CONSTRAINT [DF__tmp_ms_xx__Creat__5EB5BD53]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [CLO].[Fund] ADD  CONSTRAINT [DF__tmp_ms_xx__LastU__5FA9E18C]  DEFAULT (getdate()) FOR [LastUpdatedOn]
GO
ALTER TABLE [CLO].[Fund] ADD  CONSTRAINT [DF__tmp_ms_xx__IsAct__609E05C5]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [CLO].[Fund] ADD  CONSTRAINT [DF__Fund__IsWarehous__3672C1CF]  DEFAULT ((0)) FOR [IsWarehouse]
GO
ALTER TABLE [CLO].[Fund] ADD  CONSTRAINT [DF__Fund__SortOrder__28AEB25D]  DEFAULT ((10000)) FOR [SortOrder]
GO
ALTER TABLE [CLO].[Fund] ADD  CONSTRAINT [DF__Fund__CanFilter__2E92743C]  DEFAULT ((1)) FOR [CanFilter]
GO
