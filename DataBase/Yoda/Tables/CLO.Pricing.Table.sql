USE [Yoda]
GO
ALTER TABLE [CLO].[Pricing] DROP CONSTRAINT [FK__Pricing__Securit__0777106D]
GO
ALTER TABLE [CLO].[Pricing] DROP CONSTRAINT [DF__Pricing__LastUpd__03DC550A]
GO
ALTER TABLE [CLO].[Pricing] DROP CONSTRAINT [DF__Pricing__Created__02E830D1]
GO
/****** Object:  Table [CLO].[Pricing]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[Pricing]
GO
/****** Object:  Table [CLO].[Pricing]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[Pricing](
	[PricingId] [bigint] IDENTITY(1,1) NOT NULL,
	[DateId] [int] NOT NULL,
	[SecurityId] [int] NOT NULL,
	[Bid] [numeric](38, 10) NOT NULL,
	[Offer] [numeric](38, 10) NOT NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[LastUpdatedOn] [datetime] NULL,
	[LastUpdatedBy] [varchar](100) NULL,
 CONSTRAINT [PK__Pricing__BDDE42A0E467A154] PRIMARY KEY CLUSTERED 
(
	[DateId] ASC,
	[SecurityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[Pricing] ADD  CONSTRAINT [DF__Pricing__Created__02E830D1]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [CLO].[Pricing] ADD  CONSTRAINT [DF__Pricing__LastUpd__03DC550A]  DEFAULT (getdate()) FOR [LastUpdatedOn]
GO
ALTER TABLE [CLO].[Pricing]  WITH CHECK ADD FOREIGN KEY([SecurityId])
REFERENCES [CLO].[Security] ([SecurityId])
GO
