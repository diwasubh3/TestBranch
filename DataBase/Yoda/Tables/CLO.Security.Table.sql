USE [Yoda]
GO
ALTER TABLE [CLO].[Security] DROP CONSTRAINT [FK__Security__SnPInd__0F183235]
GO
ALTER TABLE [CLO].[Security] DROP CONSTRAINT [FK__Security__MoodyI__0E240DFC]
GO
ALTER TABLE [CLO].[Security] DROP CONSTRAINT [FK__Security__LienTy__0D2FE9C3]
GO
ALTER TABLE [CLO].[Security] DROP CONSTRAINT [FK__Security__Issuer__0C3BC58A]
GO
ALTER TABLE [CLO].[Security] DROP CONSTRAINT [FK__Security__Facili__0B47A151]
GO
ALTER TABLE [CLO].[Security] DROP CONSTRAINT [DF__tmp_ms_xx__LastU__6A7188C2]
GO
ALTER TABLE [CLO].[Security] DROP CONSTRAINT [DF__tmp_ms_xx__Creat__697D6489]
GO
ALTER TABLE [CLO].[Security] DROP CONSTRAINT [DF__tmp_ms_xx__IsDel__68894050]
GO
ALTER TABLE [CLO].[Security] DROP CONSTRAINT [DF__tmp_ms_xx__Sourc__67951C17]
GO
ALTER TABLE [CLO].[Security] DROP CONSTRAINT [DF__tmp_ms_xx__Credi__66A0F7DE]
GO
ALTER TABLE [CLO].[Security] DROP CONSTRAINT [DF__tmp_ms_xx__IsFlo__65ACD3A5]
GO
/****** Object:  Table [CLO].[Security]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[Security]
GO
/****** Object:  Table [CLO].[Security]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[Security](
	[SecurityId] [int] IDENTITY(1,1) NOT NULL,
	[SecurityCode] [varchar](100) NOT NULL,
	[SecurityDesc] [varchar](500) NULL,
	[BBGId] [varchar](1000) NOT NULL,
	[IssuerId] [int] NOT NULL,
	[FacilityId] [smallint] NOT NULL,
	[CallDate] [datetime] NULL,
	[MaturityDate] [datetime] NULL,
	[GICSIndustry] [varchar](500) NULL,
	[SnPIndustryId] [smallint] NOT NULL,
	[MoodyIndustryId] [smallint] NOT NULL,
	[IsFloating] [bit] NOT NULL,
	[LienTypeId] [smallint] NOT NULL,
	[CreditScore] [smallint] NULL,
	[ISIN] [varchar](20) NULL,
	[SourceId] [smallint] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[LastUpdatedOn] [datetime] NULL,
	[LastUpdatedBy] [varchar](100) NULL,
	[IsInDefault] [bit] NULL,
	[DefaultDate] [datetime] NULL,
 CONSTRAINT [PK__tmp_ms_x__9F8B09300491B1AC] PRIMARY KEY CLUSTERED 
(
	[SecurityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_SecurityCode] UNIQUE NONCLUSTERED 
(
	[SecurityCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[Security] ADD  CONSTRAINT [DF__tmp_ms_xx__IsFlo__65ACD3A5]  DEFAULT ((0)) FOR [IsFloating]
GO
ALTER TABLE [CLO].[Security] ADD  CONSTRAINT [DF__tmp_ms_xx__Credi__66A0F7DE]  DEFAULT ((0)) FOR [CreditScore]
GO
ALTER TABLE [CLO].[Security] ADD  CONSTRAINT [DF__tmp_ms_xx__Sourc__67951C17]  DEFAULT ((0)) FOR [SourceId]
GO
ALTER TABLE [CLO].[Security] ADD  CONSTRAINT [DF__tmp_ms_xx__IsDel__68894050]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [CLO].[Security] ADD  CONSTRAINT [DF__tmp_ms_xx__Creat__697D6489]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [CLO].[Security] ADD  CONSTRAINT [DF__tmp_ms_xx__LastU__6A7188C2]  DEFAULT (getdate()) FOR [LastUpdatedOn]
GO
ALTER TABLE [CLO].[Security]  WITH CHECK ADD FOREIGN KEY([FacilityId])
REFERENCES [CLO].[Facility] ([FacilityId])
GO
ALTER TABLE [CLO].[Security]  WITH CHECK ADD FOREIGN KEY([IssuerId])
REFERENCES [CLO].[Issuer] ([IssuerId])
GO
ALTER TABLE [CLO].[Security]  WITH CHECK ADD FOREIGN KEY([LienTypeId])
REFERENCES [CLO].[LienType] ([LienTypeId])
GO
ALTER TABLE [CLO].[Security]  WITH CHECK ADD FOREIGN KEY([MoodyIndustryId])
REFERENCES [CLO].[Industry] ([IndustryId])
GO
ALTER TABLE [CLO].[Security]  WITH CHECK ADD FOREIGN KEY([SnPIndustryId])
REFERENCES [CLO].[Industry] ([IndustryId])
GO
