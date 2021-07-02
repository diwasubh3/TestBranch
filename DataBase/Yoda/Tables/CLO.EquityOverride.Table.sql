USE [Yoda]
GO
ALTER TABLE [CLO].[EquityOverride] DROP CONSTRAINT [DF__tmp_ms_xx__IsDel__5D1858FB]
GO
/****** Object:  Table [CLO].[EquityOverride]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[EquityOverride]
GO
/****** Object:  Table [CLO].[EquityOverride]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[EquityOverride](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FundId] [int] NOT NULL,
	[SecurityCode] [varchar](100) NOT NULL,
	[Notional] [numeric](38, 10) NULL,
	[Bid] [numeric](28, 10) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedBy] [varchar](100) NULL,
	[LastModifiedOn] [datetime] NULL,
 CONSTRAINT [PK__tmp_ms_x__3214EC07B477538A] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[EquityOverride] ADD  CONSTRAINT [DF__tmp_ms_xx__IsDel__5D1858FB]  DEFAULT ((0)) FOR [IsDeleted]
GO
