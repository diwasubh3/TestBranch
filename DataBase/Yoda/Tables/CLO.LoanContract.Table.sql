USE [Yoda]
GO
ALTER TABLE [CLO].[LoanContract] DROP CONSTRAINT [DF__LoanContr__Creat__348A795D]
GO
/****** Object:  Table [CLO].[LoanContract]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[LoanContract]
GO
/****** Object:  Table [CLO].[LoanContract]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[LoanContract](
	[AssetLoanXIDAssetIDName] [varchar](50) NULL,
	[ContractDisplayName] [varchar](50) NULL,
	[PortfolioDisplayName] [varchar](255) NULL,
	[IssuerDisplayName] [varchar](1000) NULL,
	[PositionDesc] [varchar](1000) NULL,
	[DayCount] [varchar](50) NULL,
	[ResetDays] [int] NULL,
	[PortfolioName] [varchar](255) NULL,
	[IssuerName] [varchar](1000) NULL,
	[AssetName] [varchar](255) NULL,
	[PositionName] [varchar](255) NULL,
	[PortfolioEntityId] [varchar](50) NULL,
	[IssuerEntityId] [varchar](50) NULL,
	[PositionID] [int] NULL,
	[ContractContract] [varchar](50) NULL,
	[ContractAmount] [decimal](30, 4) NULL,
	[ContractGlobalAmount] [decimal](30, 4) NULL,
	[ContractAllInRate] [decimal](30, 18) NULL,
	[ContractBaseRate] [decimal](30, 18) NULL,
	[ContractSpread] [decimal](30, 18) NULL,
	[ContractStartDate] [date] NULL,
	[ContractMaturityDate] [date] NULL,
	[ContractNextPaymentDate] [date] NULL,
	[ContractInterestReceived] [decimal](30, 4) NULL,
	[ContractInterestDue] [decimal](30, 4) NULL,
	[MonthCountName] [varchar](25) NULL,
	[YearCountName] [varchar](25) NULL,
	[ContractFacilityOptionName] [varchar](50) NULL,
	[ContractTypeDescription] [varchar](50) NULL,
	[ContractContractType] [int] NULL,
	[AsOfDate] [datetime] NULL,
	[ContractCurrencyTypeIdentifier] [varchar](25) NULL,
	[ContractEntityId] [varchar](255) NULL,
	[ContractFrequency] [int] NULL,
	[ContractAmountString] [varchar](255) NULL,
	[CreatedDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[LoanContract] ADD  CONSTRAINT [DF__LoanContr__Creat__348A795D]  DEFAULT (getdate()) FOR [CreatedDate]
GO
