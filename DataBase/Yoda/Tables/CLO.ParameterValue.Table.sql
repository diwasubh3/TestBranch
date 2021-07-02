USE [Yoda]
GO
ALTER TABLE [CLO].[ParameterValue] DROP CONSTRAINT [FK__Parameter__Param__03A67F89]
GO
/****** Object:  Table [CLO].[ParameterValue]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[ParameterValue]
GO
/****** Object:  Table [CLO].[ParameterValue]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[ParameterValue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParameterTypeId] [smallint] NOT NULL,
	[ParameterValueNumber] [numeric](28, 4) NULL,
	[ParameterValueText] [varchar](100) NULL,
	[ParameterMinValueNumber] [numeric](28, 4) NULL,
	[ParameterMaxValueNumber] [numeric](28, 4) NULL,
 CONSTRAINT [PK__Paramete__3214EC07F12A25EB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[ParameterValue]  WITH CHECK ADD FOREIGN KEY([ParameterTypeId])
REFERENCES [CLO].[ParameterType] ([ParameterTypeId])
GO
