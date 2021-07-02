USE [Yoda]
GO
ALTER TABLE [CLO].[FundAssetClass] DROP CONSTRAINT [FK__FundAsset__Moody__670A40DB]
GO
ALTER TABLE [CLO].[FundAssetClass] DROP CONSTRAINT [FK__FundAsset__FundI__66161CA2]
GO
ALTER TABLE [CLO].[FundAssetClass] DROP CONSTRAINT [FK__FundAsset__Asset__6521F869]
GO
ALTER TABLE [CLO].[FundAssetClass] DROP CONSTRAINT [DF__FundAsset__Creat__5A3BEC50]
GO
/****** Object:  Table [CLO].[FundAssetClass]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[FundAssetClass]
GO
/****** Object:  Table [CLO].[FundAssetClass]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[FundAssetClass](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FundId] [int] NOT NULL,
	[AssetClassId] [int] NOT NULL,
	[Notional] [numeric](38, 10) NULL,
	[Spread] [numeric](38, 10) NULL,
	[Libor] [numeric](38, 10) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[MoodyRatingId] [smallint] NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedBy] [varchar](100) NULL,
	[LastModifiedOn] [datetime] NULL,
	[OverrideCalcSpread] [numeric](38, 10) NULL,
 CONSTRAINT [PK__FundAsse__3214EC07E4935BEF] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[FundAssetClass] ADD  CONSTRAINT [DF__FundAsset__Creat__5A3BEC50]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [CLO].[FundAssetClass]  WITH CHECK ADD FOREIGN KEY([AssetClassId])
REFERENCES [CLO].[AssetClass] ([AssetClassId])
GO
ALTER TABLE [CLO].[FundAssetClass]  WITH CHECK ADD FOREIGN KEY([FundId])
REFERENCES [CLO].[Fund] ([FundId])
GO
ALTER TABLE [CLO].[FundAssetClass]  WITH CHECK ADD FOREIGN KEY([MoodyRatingId])
REFERENCES [CLO].[Rating] ([RatingId])
GO
