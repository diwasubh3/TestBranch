USE [Yoda]
GO
/****** Object:  Table [CLO].[TradeBlotterJob]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[TradeBlotterJob]
GO
/****** Object:  Table [CLO].[TradeBlotterJob]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[TradeBlotterJob](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StartedOn] [datetime] NULL,
	[FileName] [varchar](500) NOT NULL,
	[DateId] [int] NOT NULL,
	[CompletedOn] [datetime] NULL,
	[Error] [varchar](max) NULL,
 CONSTRAINT [PK__TradeBlo__3214EC077D09D1DE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
