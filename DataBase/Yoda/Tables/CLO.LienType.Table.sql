USE [Yoda]
GO
ALTER TABLE [CLO].[LienType] DROP CONSTRAINT [DF__LienType__LastUp__7D6461A5]
GO
ALTER TABLE [CLO].[LienType] DROP CONSTRAINT [DF__LienType__Create__7C703D6C]
GO
/****** Object:  Table [CLO].[LienType]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[LienType]
GO
/****** Object:  Table [CLO].[LienType]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[LienType](
	[LienTypeId] [smallint] IDENTITY(1,1) NOT NULL,
	[LienTypeDesc] [varchar](100) NOT NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[LastUpdatedOn] [datetime] NULL,
	[LastUpdatedBy] [varchar](100) NULL,
 CONSTRAINT [PK__LienType__2614EBD414D2273D] PRIMARY KEY CLUSTERED 
(
	[LienTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[LienType] ADD  CONSTRAINT [DF__LienType__Create__7C703D6C]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [CLO].[LienType] ADD  CONSTRAINT [DF__LienType__LastUp__7D6461A5]  DEFAULT (getdate()) FOR [LastUpdatedOn]
GO
