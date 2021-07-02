USE [Yoda]
GO
/****** Object:  Table [CLO].[Operator]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[Operator]
GO
/****** Object:  Table [CLO].[Operator]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[Operator](
	[OperatorId] [smallint] IDENTITY(1,1) NOT NULL,
	[OperatorCode] [varchar](2) NOT NULL,
	[OperatorVal] [varchar](10) NULL,
 CONSTRAINT [PK__Operator__7BB12FAEA28587F9] PRIMARY KEY CLUSTERED 
(
	[OperatorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
