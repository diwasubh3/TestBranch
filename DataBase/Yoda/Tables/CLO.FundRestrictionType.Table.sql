USE [Yoda]
GO
/****** Object:  Table [CLO].[FundRestrictionType]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[FundRestrictionType]
GO
/****** Object:  Table [CLO].[FundRestrictionType]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[FundRestrictionType](
	[FundRestrictionTypeId] [smallint] IDENTITY(1,1) NOT NULL,
	[FundRestrictionTypeName] [varchar](100) NULL,
	[DisplayColor] [varchar](100) NULL,
	[SortOrder] [smallint] NULL,
 CONSTRAINT [PK__FundRest__C87778FD6A492786] PRIMARY KEY CLUSTERED 
(
	[FundRestrictionTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
