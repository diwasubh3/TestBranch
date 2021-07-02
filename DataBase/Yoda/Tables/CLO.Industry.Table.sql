USE [Yoda]
GO
ALTER TABLE [CLO].[Industry] DROP CONSTRAINT [DF__tmp_ms_xx__LastU__7B9C14C4]
GO
ALTER TABLE [CLO].[Industry] DROP CONSTRAINT [DF__tmp_ms_xx__Creat__7AA7F08B]
GO
ALTER TABLE [CLO].[Industry] DROP CONSTRAINT [DF__tmp_ms_xx__IsMoo__79B3CC52]
GO
ALTER TABLE [CLO].[Industry] DROP CONSTRAINT [DF__tmp_ms_xx__IsSnP__78BFA819]
GO
/****** Object:  Table [CLO].[Industry]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[Industry]
GO
/****** Object:  Table [CLO].[Industry]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[Industry](
	[IndustryId] [smallint] IDENTITY(1,1) NOT NULL,
	[IndustryDesc] [varchar](100) NOT NULL,
	[IsSnP] [bit] NOT NULL,
	[IsMoody] [bit] NOT NULL,
	[MappedSnPIndustryId] [smallint] NULL,
	[MappedMoodyIndustryId] [smallint] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[LastUpdatedOn] [datetime] NULL,
	[LastUpdatedBy] [varchar](100) NULL,
 CONSTRAINT [PK__tmp_ms_x__808DEDCCE8A29A4B] PRIMARY KEY CLUSTERED 
(
	[IndustryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[Industry] ADD  CONSTRAINT [DF__tmp_ms_xx__IsSnP__78BFA819]  DEFAULT ((0)) FOR [IsSnP]
GO
ALTER TABLE [CLO].[Industry] ADD  CONSTRAINT [DF__tmp_ms_xx__IsMoo__79B3CC52]  DEFAULT ((0)) FOR [IsMoody]
GO
ALTER TABLE [CLO].[Industry] ADD  CONSTRAINT [DF__tmp_ms_xx__Creat__7AA7F08B]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [CLO].[Industry] ADD  CONSTRAINT [DF__tmp_ms_xx__LastU__7B9C14C4]  DEFAULT (getdate()) FOR [LastUpdatedOn]
GO
