USE [Yoda]
GO
/****** Object:  Table [CLO].[ParameterType]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[ParameterType]
GO
/****** Object:  Table [CLO].[ParameterType]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[ParameterType](
	[ParameterTypeId] [smallint] IDENTITY(1,1) NOT NULL,
	[ParameterTypeName] [varchar](100) NOT NULL,
 CONSTRAINT [PK__Paramete__7FF7AC38BC41B2A6] PRIMARY KEY CLUSTERED 
(
	[ParameterTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
