USE [Yoda]
GO
ALTER TABLE [CLO].[Position] DROP CONSTRAINT [FK__Position__Securi__0682EC34]
GO
ALTER TABLE [CLO].[Position] DROP CONSTRAINT [FK__Position__FundId__058EC7FB]
GO
ALTER TABLE [CLO].[Position] DROP CONSTRAINT [FK__Position__Countr__049AA3C2]
GO
ALTER TABLE [CLO].[Position] DROP CONSTRAINT [DF__tmp_ms_xx__LastU__7E437745]
GO
ALTER TABLE [CLO].[Position] DROP CONSTRAINT [DF__tmp_ms_xx__Creat__7D4F530C]
GO
ALTER TABLE [CLO].[Position] DROP CONSTRAINT [DF__tmp_ms_xx__IsCov__7C5B2ED3]
GO
/****** Object:  Table [CLO].[Position]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[Position]
GO
/****** Object:  Table [CLO].[Position]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[Position](
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
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[DateId] ASC,
	[FundId] ASC,
	[SecurityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[Position] ADD  CONSTRAINT [DF__tmp_ms_xx__IsCov__7C5B2ED3]  DEFAULT ((0)) FOR [IsCovLite]
GO
ALTER TABLE [CLO].[Position] ADD  CONSTRAINT [DF__tmp_ms_xx__Creat__7D4F530C]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [CLO].[Position] ADD  CONSTRAINT [DF__tmp_ms_xx__LastU__7E437745]  DEFAULT (getdate()) FOR [LastUpdatedOn]
GO
ALTER TABLE [CLO].[Position]  WITH CHECK ADD FOREIGN KEY([CountryId])
REFERENCES [CLO].[Country] ([CountryId])
GO
ALTER TABLE [CLO].[Position]  WITH CHECK ADD FOREIGN KEY([FundId])
REFERENCES [CLO].[Fund] ([FundId])
GO
ALTER TABLE [CLO].[Position]  WITH CHECK ADD FOREIGN KEY([SecurityId])
REFERENCES [CLO].[Security] ([SecurityId])
GO
