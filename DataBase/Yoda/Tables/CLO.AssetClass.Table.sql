USE [Yoda]
GO
/****** Object:  Table [CLO].[AssetClass]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[AssetClass]
GO
/****** Object:  Table [CLO].[AssetClass]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[AssetClass](
	[AssetClassId] [int] NOT NULL,
	[AssetClassCode] [varchar](100) NOT NULL,
 CONSTRAINT [PK__tmp_ms_x__95EDFD6FC8937190] PRIMARY KEY CLUSTERED 
(
	[AssetClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
