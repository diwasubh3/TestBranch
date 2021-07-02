USE [Yoda]
GO
ALTER TABLE [CLO].[Trade] DROP CONSTRAINT [FK__Trade__SecurityI__18A19C6F]
GO
ALTER TABLE [CLO].[Trade] DROP CONSTRAINT [DF__tmp_ms_xx__LastU__5FF3FA4F]
GO
ALTER TABLE [CLO].[Trade] DROP CONSTRAINT [DF__tmp_ms_xx__Creat__5EFFD616]
GO
ALTER TABLE [CLO].[Trade] DROP CONSTRAINT [DF__tmp_ms_xx__IsCan__5E0BB1DD]
GO
ALTER TABLE [CLO].[Trade] DROP CONSTRAINT [DF__tmp_ms_xx__KeepO__5D178DA4]
GO
ALTER TABLE [CLO].[Trade] DROP CONSTRAINT [DF__tmp_ms_xx__SellA__5C23696B]
GO
ALTER TABLE [CLO].[Trade] DROP CONSTRAINT [DF__tmp_ms_xx__IsBuy__5B2F4532]
GO
/****** Object:  Table [CLO].[Trade]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[Trade]
GO
/****** Object:  Table [CLO].[Trade]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[Trade](
	[TradeId] [bigint] IDENTITY(1,1) NOT NULL,
	[SecurityId] [int] NOT NULL,
	[DateId] [int] NOT NULL,
	[IsBuy] [bit] NULL,
	[TradeAmount] [numeric](38, 4) NULL,
	[TradePrice] [numeric](38, 4) NULL,
	[SellAll] [bit] NULL,
	[KeepOnBlotter] [bit] NULL,
	[BidOfferPrice] [numeric](38, 4) NULL,
	[Comments] [varchar](1000) NULL,
	[IsCancelled] [bit] NULL,
	[FinalAllocation] [numeric](38, 4) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[LastUpdatedOn] [datetime] NULL,
	[LastUpdatedBy] [varchar](100) NULL,
 CONSTRAINT [PK__tmp_ms_x__3028BB5BFC45EF3D] PRIMARY KEY CLUSTERED 
(
	[TradeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[Trade] ADD  CONSTRAINT [DF__tmp_ms_xx__IsBuy__5B2F4532]  DEFAULT ((0)) FOR [IsBuy]
GO
ALTER TABLE [CLO].[Trade] ADD  CONSTRAINT [DF__tmp_ms_xx__SellA__5C23696B]  DEFAULT ((0)) FOR [SellAll]
GO
ALTER TABLE [CLO].[Trade] ADD  CONSTRAINT [DF__tmp_ms_xx__KeepO__5D178DA4]  DEFAULT ((0)) FOR [KeepOnBlotter]
GO
ALTER TABLE [CLO].[Trade] ADD  CONSTRAINT [DF__tmp_ms_xx__IsCan__5E0BB1DD]  DEFAULT ((0)) FOR [IsCancelled]
GO
ALTER TABLE [CLO].[Trade] ADD  CONSTRAINT [DF__tmp_ms_xx__Creat__5EFFD616]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [CLO].[Trade] ADD  CONSTRAINT [DF__tmp_ms_xx__LastU__5FF3FA4F]  DEFAULT (getdate()) FOR [LastUpdatedOn]
GO
ALTER TABLE [CLO].[Trade]  WITH CHECK ADD FOREIGN KEY([SecurityId])
REFERENCES [CLO].[Security] ([SecurityId])
GO
