USE [Yoda]
GO
ALTER TABLE [CLO].[TradeSwap] DROP CONSTRAINT [DF__tmp_ms_xx__Statu__5CAD7950]
GO
/****** Object:  Table [CLO].[TradeSwap]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[TradeSwap]
GO
/****** Object:  Table [CLO].[TradeSwap]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[TradeSwap](
	[TradeSwapId] [int] IDENTITY(1,1) NOT NULL,
	[Parameters] [varchar](max) NOT NULL,
	[DateId] [int] NOT NULL,
	[Status] [smallint] NOT NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreatedOn] [datetime] NULL,
	[ProcessStartedOn] [datetime] NULL,
	[ProcessCompletedOn] [datetime] NULL,
	[Error] [varchar](max) NULL,
 CONSTRAINT [PK__tmp_ms_x__6F035BB7581505C4] PRIMARY KEY CLUSTERED 
(
	[TradeSwapId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[TradeSwap] ADD  CONSTRAINT [DF__tmp_ms_xx__Statu__5CAD7950]  DEFAULT ((0)) FOR [Status]
GO
