USE [Yoda]
GO
ALTER TABLE [CLO].[TradeAllocation] DROP CONSTRAINT [FK__TradeAllo__Trade__1A89E4E1]
GO
ALTER TABLE [CLO].[TradeAllocation] DROP CONSTRAINT [FK__TradeAllo__FundI__1995C0A8]
GO
ALTER TABLE [CLO].[TradeAllocation] DROP CONSTRAINT [DF__tmp_ms_xx__LastU__23AA061E]
GO
ALTER TABLE [CLO].[TradeAllocation] DROP CONSTRAINT [DF__tmp_ms_xx__Creat__22B5E1E5]
GO
/****** Object:  Table [CLO].[TradeAllocation]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[TradeAllocation]
GO
/****** Object:  Table [CLO].[TradeAllocation]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[TradeAllocation](
	[TradeAllocationId] [bigint] IDENTITY(1,1) NOT NULL,
	[TradeId] [bigint] NOT NULL,
	[CurrentAllocation] [numeric](38, 4) NULL,
	[NewAllocation] [numeric](38, 4) NULL,
	[FundId] [int] NOT NULL,
	[FinalAllocation] [numeric](38, 4) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[LastUpdatedOn] [datetime] NULL,
	[LastUpdatedBy] [varchar](100) NULL,
 CONSTRAINT [PK_TradeAllocation] PRIMARY KEY CLUSTERED 
(
	[TradeId] ASC,
	[FundId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[TradeAllocation] ADD  CONSTRAINT [DF__tmp_ms_xx__Creat__22B5E1E5]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [CLO].[TradeAllocation] ADD  CONSTRAINT [DF__tmp_ms_xx__LastU__23AA061E]  DEFAULT (getdate()) FOR [LastUpdatedOn]
GO
ALTER TABLE [CLO].[TradeAllocation]  WITH CHECK ADD FOREIGN KEY([FundId])
REFERENCES [CLO].[Fund] ([FundId])
GO
ALTER TABLE [CLO].[TradeAllocation]  WITH CHECK ADD FOREIGN KEY([TradeId])
REFERENCES [CLO].[Trade] ([TradeId])
GO
