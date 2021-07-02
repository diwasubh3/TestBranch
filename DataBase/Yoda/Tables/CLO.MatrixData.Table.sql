USE [Yoda]
GO
ALTER TABLE [CLO].[MatrixData] DROP CONSTRAINT [FK__MatrixDat__FundI__7740A8A4]
GO
/****** Object:  Table [CLO].[MatrixData]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[MatrixData]
GO
/****** Object:  Table [CLO].[MatrixData]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CLO].[MatrixData](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FundId] [int] NULL,
	[Spread] [numeric](28, 10) NULL,
	[Diversity] [numeric](28, 10) NULL,
	[WARF] [numeric](28, 10) NULL,
	[WARFModifier] [numeric](28, 10) NULL,
	[DataPointType] [smallint] NULL,
	[InterpolationType] [smallint] NULL,
	[FromMajorMatrixDataId] [int] NULL,
	[ToMajorMatrixDataId] [int] NULL,
 CONSTRAINT [PK__MatrixDa__3214EC07ED0E0BD2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [CLO].[MatrixData]  WITH CHECK ADD FOREIGN KEY([FundId])
REFERENCES [CLO].[Fund] ([FundId])
GO
