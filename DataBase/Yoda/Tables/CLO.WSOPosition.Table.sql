USE [Yoda]
GO
ALTER TABLE [CLO].[WSOPosition] DROP CONSTRAINT [FK__WSOPositi__Secur__2CA8951C]
GO
ALTER TABLE [CLO].[WSOPosition] DROP CONSTRAINT [FK__WSOPositi__FundI__2BB470E3]
GO
ALTER TABLE [CLO].[WSOPosition] DROP CONSTRAINT [FK__WSOPositi__Count__2AC04CAA]
GO
ALTER TABLE [CLO].[WSOPosition] DROP CONSTRAINT [DF__WSOPositi__LastU__577EAFDF]
GO
ALTER TABLE [CLO].[WSOPosition] DROP CONSTRAINT [DF__WSOPositi__Creat__568A8BA6]
GO
ALTER TABLE [CLO].[WSOPosition] DROP CONSTRAINT [DF__WSOPositi__IsCov__5596676D]
GO
/****** Object:  Table [CLO].[WSOPosition]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[WSOPosition]
GO
/****** Object:  Table [CLO].[WSOPosition]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[WSOPosition](
	[PositionId] [bigint] IDENTITY(1,1) NOT NULL,
	[FundId] [int] NOT NULL,
	[SecurityId] [int] NOT NULL,
	[DateId] [int] NOT NULL,
	[MarketValue] [numeric](38, 4) NULL,
	[Exposure] [numeric](38, 4) NULL,
	[PctExposure] [numeric](38, 4) NULL,
	[PxPrice] [numeric](38, 4) NULL,
	[IsCovLite] [bit] NOT NULL,
	[CountryId] [smallint] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[LastUpdatedOn] [datetime] NULL,
	[LastUpdatedBy] [varchar](100) NULL,
	[IsStale] [bit] NULL,
	[CapitalizedInterestOrig] [numeric](38, 4) NULL,
	[SnPAssetRecoveryRating] [varchar](100) NULL,
 CONSTRAINT [WSO_PK_Position] PRIMARY KEY CLUSTERED 
(
	[DateId] ASC,
	[FundId] ASC,
	[SecurityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[WSOPosition] ADD  CONSTRAINT [DF__WSOPositi__IsCov__5596676D]  DEFAULT ((0)) FOR [IsCovLite]
GO
ALTER TABLE [CLO].[WSOPosition] ADD  CONSTRAINT [DF__WSOPositi__Creat__568A8BA6]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [CLO].[WSOPosition] ADD  CONSTRAINT [DF__WSOPositi__LastU__577EAFDF]  DEFAULT (getdate()) FOR [LastUpdatedOn]
GO
ALTER TABLE [CLO].[WSOPosition]  WITH CHECK ADD FOREIGN KEY([CountryId])
REFERENCES [CLO].[Country] ([CountryId])
GO
ALTER TABLE [CLO].[WSOPosition]  WITH CHECK ADD FOREIGN KEY([FundId])
REFERENCES [CLO].[Fund] ([FundId])
GO
ALTER TABLE [CLO].[WSOPosition]  WITH CHECK ADD FOREIGN KEY([SecurityId])
REFERENCES [CLO].[Security] ([SecurityId])
GO
