USE [Yoda]
GO
ALTER TABLE [CLO].[MatrixPoint] DROP CONSTRAINT [FK__MatrixPoi__FundI__7834CCDD]
GO
/****** Object:  Table [CLO].[MatrixPoint]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[MatrixPoint]
GO
/****** Object:  Table [CLO].[MatrixPoint]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[MatrixPoint](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FundId] [int] NULL,
	[Spread] [numeric](28, 10) NULL,
	[Diversity] [numeric](28, 10) NULL,
	[WARF] [numeric](28, 10) NULL,
	[WARFModifier] [numeric](28, 10) NULL,
	[DataPointType] [smallint] NULL,
	[TopMajorSpread] [numeric](28, 10) NULL,
	[BottomMajorSpread] [numeric](28, 10) NULL,
	[LeftMajorDiversity] [numeric](28, 10) NULL,
	[RightMajorDiversity] [numeric](28, 10) NULL,
	[TopSpread] [numeric](28, 10) NULL,
	[BottomSpread] [numeric](28, 10) NULL,
	[LeftDiversity] [numeric](28, 10) NULL,
	[RightDiversity] [numeric](28, 10) NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreatedOn] [datetime] NULL,
 CONSTRAINT [PK__MatrixPo__3214EC07EBD10813] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[MatrixPoint]  WITH CHECK ADD FOREIGN KEY([FundId])
REFERENCES [CLO].[Fund] ([FundId])
GO
