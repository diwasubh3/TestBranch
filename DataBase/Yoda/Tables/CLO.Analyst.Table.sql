USE [Yoda]
GO
/****** Object:  Table [CLO].[Analyst]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[Analyst]
GO
/****** Object:  Table [CLO].[Analyst]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[Analyst](
	[AnalystId] [int] NOT NULL,
	[AnalystTypeId] [int] NULL,
	[AnalystCode] [varchar](20) NULL,
	[AnalystDesc] [varchar](255) NULL,
	[AppUserId] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
