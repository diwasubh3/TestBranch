USE [Yoda]
GO
ALTER TABLE [CLO].[AlertProcessor] DROP CONSTRAINT [FK__AlertProc__Param__2D9CB955]
GO
ALTER TABLE [CLO].[AlertProcessor] DROP CONSTRAINT [DF__tmp_ms_xx__IsAct__609318CD]
GO
/****** Object:  Table [CLO].[AlertProcessor]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[AlertProcessor]
GO
/****** Object:  Table [CLO].[AlertProcessor]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[AlertProcessor](
	[AlertId] [int] IDENTITY(1,1) NOT NULL,
	[AlertProcessorClassName] [varchar](100) NULL,
	[ParameterTypeId] [smallint] NOT NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK__tmp_ms_x__EBB16A8D2C4AAEEF] PRIMARY KEY CLUSTERED 
(
	[AlertId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[AlertProcessor] ADD  CONSTRAINT [DF__tmp_ms_xx__IsAct__609318CD]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [CLO].[AlertProcessor]  WITH CHECK ADD FOREIGN KEY([ParameterTypeId])
REFERENCES [CLO].[ParameterType] ([ParameterTypeId])
GO
