USE [Yoda]
GO
ALTER TABLE [CLO].[SecurityOverride] DROP CONSTRAINT [FK__SecurityO__Secur__16B953FD]
GO
ALTER TABLE [CLO].[SecurityOverride] DROP CONSTRAINT [FK__SecurityO__Field__15C52FC4]
GO
ALTER TABLE [CLO].[SecurityOverride] DROP CONSTRAINT [DF__tmp_ms_xx__LastU__0C0786B7]
GO
ALTER TABLE [CLO].[SecurityOverride] DROP CONSTRAINT [DF__tmp_ms_xx__Creat__0B13627E]
GO
ALTER TABLE [CLO].[SecurityOverride] DROP CONSTRAINT [DF__tmp_ms_xx__IsCon__0A1F3E45]
GO
ALTER TABLE [CLO].[SecurityOverride] DROP CONSTRAINT [DF__tmp_ms_xx__IsDel__092B1A0C]
GO
/****** Object:  Table [CLO].[SecurityOverride]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[SecurityOverride]
GO
/****** Object:  Table [CLO].[SecurityOverride]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[SecurityOverride](
	[SecurityOverrideId] [int] IDENTITY(1,1) NOT NULL,
	[SecurityId] [int] NOT NULL,
	[FieldId] [smallint] NOT NULL,
	[ExistingValue] [varchar](100) NULL,
	[OverrideValue] [varchar](100) NOT NULL,
	[EffectiveFrom] [datetime] NULL,
	[EffectiveTo] [datetime] NULL,
	[Comments] [varchar](1000) NULL,
	[IsDeleted] [bit] NULL,
	[IsConflict] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[LastUpdatedOn] [datetime] NULL,
	[LastUpdatedBy] [varchar](100) NULL,
 CONSTRAINT [PK__tmp_ms_x__52F37980C3269429] PRIMARY KEY CLUSTERED 
(
	[SecurityOverrideId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[SecurityOverride] ADD  CONSTRAINT [DF__tmp_ms_xx__IsDel__092B1A0C]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [CLO].[SecurityOverride] ADD  CONSTRAINT [DF__tmp_ms_xx__IsCon__0A1F3E45]  DEFAULT ((0)) FOR [IsConflict]
GO
ALTER TABLE [CLO].[SecurityOverride] ADD  CONSTRAINT [DF__tmp_ms_xx__Creat__0B13627E]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [CLO].[SecurityOverride] ADD  CONSTRAINT [DF__tmp_ms_xx__LastU__0C0786B7]  DEFAULT (getdate()) FOR [LastUpdatedOn]
GO
ALTER TABLE [CLO].[SecurityOverride]  WITH CHECK ADD FOREIGN KEY([FieldId])
REFERENCES [CLO].[Field] ([FieldId])
GO
ALTER TABLE [CLO].[SecurityOverride]  WITH CHECK ADD FOREIGN KEY([SecurityId])
REFERENCES [CLO].[Security] ([SecurityId])
GO
