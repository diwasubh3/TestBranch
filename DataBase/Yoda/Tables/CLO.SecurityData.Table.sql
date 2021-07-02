USE [Yoda]
GO
ALTER TABLE [CLO].[SecurityData] DROP CONSTRAINT [FK__SecurityD__SnPIn__14D10B8B]
GO
ALTER TABLE [CLO].[SecurityData] DROP CONSTRAINT [FK__SecurityD__Secur__13DCE752]
GO
ALTER TABLE [CLO].[SecurityData] DROP CONSTRAINT [FK__SecurityD__Moody__12E8C319]
GO
ALTER TABLE [CLO].[SecurityData] DROP CONSTRAINT [FK__SecurityD__LienT__11F49EE0]
GO
ALTER TABLE [CLO].[SecurityData] DROP CONSTRAINT [FK__SecurityD__Issue__11007AA7]
GO
ALTER TABLE [CLO].[SecurityData] DROP CONSTRAINT [FK__SecurityD__Facil__100C566E]
GO
ALTER TABLE [CLO].[SecurityData] DROP CONSTRAINT [DF__SecurityD__LastU__2FDAD2D9]
GO
ALTER TABLE [CLO].[SecurityData] DROP CONSTRAINT [DF__SecurityD__Creat__2EE6AEA0]
GO
ALTER TABLE [CLO].[SecurityData] DROP CONSTRAINT [DF__SecurityD__Credi__2DF28A67]
GO
ALTER TABLE [CLO].[SecurityData] DROP CONSTRAINT [DF__SecurityD__IsFlo__2CFE662E]
GO
/****** Object:  Table [CLO].[SecurityData]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[SecurityData]
GO
/****** Object:  Table [CLO].[SecurityData]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[SecurityData](
	[SecurityDataId] [bigint] IDENTITY(1,1) NOT NULL,
	[DateId] [int] NOT NULL,
	[SecurityId] [int] NOT NULL,
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
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[LastUpdatedOn] [datetime] NULL,
	[LastUpdatedBy] [varchar](100) NULL,
	[IsInDefault] [bit] NULL,
	[DefaultDate] [datetime] NULL,
 CONSTRAINT [PK_SecurityData] PRIMARY KEY CLUSTERED 
(
	[DateId] ASC,
	[SecurityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[SecurityData] ADD  CONSTRAINT [DF__SecurityD__IsFlo__2CFE662E]  DEFAULT ((0)) FOR [IsFloating]
GO
ALTER TABLE [CLO].[SecurityData] ADD  CONSTRAINT [DF__SecurityD__Credi__2DF28A67]  DEFAULT ((0)) FOR [CreditScore]
GO
ALTER TABLE [CLO].[SecurityData] ADD  CONSTRAINT [DF__SecurityD__Creat__2EE6AEA0]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [CLO].[SecurityData] ADD  CONSTRAINT [DF__SecurityD__LastU__2FDAD2D9]  DEFAULT (getdate()) FOR [LastUpdatedOn]
GO
ALTER TABLE [CLO].[SecurityData]  WITH CHECK ADD FOREIGN KEY([FacilityId])
REFERENCES [CLO].[Facility] ([FacilityId])
GO
ALTER TABLE [CLO].[SecurityData]  WITH CHECK ADD FOREIGN KEY([IssuerId])
REFERENCES [CLO].[Issuer] ([IssuerId])
GO
ALTER TABLE [CLO].[SecurityData]  WITH CHECK ADD FOREIGN KEY([LienTypeId])
REFERENCES [CLO].[LienType] ([LienTypeId])
GO
ALTER TABLE [CLO].[SecurityData]  WITH CHECK ADD FOREIGN KEY([MoodyIndustryId])
REFERENCES [CLO].[Industry] ([IndustryId])
GO
ALTER TABLE [CLO].[SecurityData]  WITH CHECK ADD FOREIGN KEY([SecurityId])
REFERENCES [CLO].[Security] ([SecurityId])
GO
ALTER TABLE [CLO].[SecurityData]  WITH CHECK ADD FOREIGN KEY([SnPIndustryId])
REFERENCES [CLO].[Industry] ([IndustryId])
GO
