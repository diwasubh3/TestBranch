USE [Yoda]
GO
/****** Object:  Table [CLO].[Rule]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[Rule]
GO
/****** Object:  Table [CLO].[Rule]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[Rule](
	[RuleId] [smallint] IDENTITY(1,1) NOT NULL,
	[RuleName] [varchar](100) NULL,
	[ExecutionStoredProcedure] [varchar](100) NULL,
	[SortOrder] [smallint] NULL,
 CONSTRAINT [PK__Rule__110458E2E11C59C8] PRIMARY KEY CLUSTERED 
(
	[RuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
