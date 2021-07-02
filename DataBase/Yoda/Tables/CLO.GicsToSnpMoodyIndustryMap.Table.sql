USE [Yoda]
GO
ALTER TABLE [CLO].[GicsToSnpMoodyIndustryMap] DROP CONSTRAINT [DF__tmp_ms_xx__LastU__08F60FE2]
GO
ALTER TABLE [CLO].[GicsToSnpMoodyIndustryMap] DROP CONSTRAINT [DF__tmp_ms_xx__Creat__0801EBA9]
GO
/****** Object:  Table [CLO].[GicsToSnpMoodyIndustryMap]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[GicsToSnpMoodyIndustryMap]
GO
/****** Object:  Table [CLO].[GicsToSnpMoodyIndustryMap]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[GicsToSnpMoodyIndustryMap](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SectorId] [smallint] NULL,
	[GICSIndustryGroup] [varchar](100) NOT NULL,
	[GICSIndustry] [varchar](100) NOT NULL,
	[GICSIndustryGrpDesc] [varchar](500) NOT NULL,
	[GICSIndustryDesc] [varchar](100) NOT NULL,
	[MappedSnPIndustryId] [smallint] NULL,
	[MappedMoodyIndustryId] [smallint] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[LastUpdatedOn] [datetime] NULL,
	[LastUpdatedBy] [varchar](100) NULL,
 CONSTRAINT [PK__tmp_ms_x__3214EC07C5CBB255] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[GicsToSnpMoodyIndustryMap] ADD  CONSTRAINT [DF__tmp_ms_xx__Creat__0801EBA9]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [CLO].[GicsToSnpMoodyIndustryMap] ADD  CONSTRAINT [DF__tmp_ms_xx__LastU__08F60FE2]  DEFAULT (getdate()) FOR [LastUpdatedOn]
GO
