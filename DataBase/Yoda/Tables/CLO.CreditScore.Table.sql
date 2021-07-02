USE [Yoda]
GO
/****** Object:  Table [CLO].[CreditScore]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[CreditScore]
GO
/****** Object:  Table [CLO].[CreditScore]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[CreditScore](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ScoreDescription] [varchar](2000) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
