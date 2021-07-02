USE [Yoda]
GO
ALTER TABLE [CLO].[Facility] DROP CONSTRAINT [DF__Facility__LastUp__0505836D]
GO
ALTER TABLE [CLO].[Facility] DROP CONSTRAINT [DF__Facility__Create__04115F34]
GO
/****** Object:  Table [CLO].[Facility]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[Facility]
GO
/****** Object:  Table [CLO].[Facility]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[Facility](
	[FacilityId] [smallint] IDENTITY(1,1) NOT NULL,
	[FacilityDesc] [varchar](100) NOT NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[LastUpdatedOn] [datetime] NULL,
	[LastUpdatedBy] [varchar](100) NULL,
 CONSTRAINT [PK__Facility__5FB08A748C4232B2] PRIMARY KEY CLUSTERED 
(
	[FacilityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[Facility] ADD  CONSTRAINT [DF__Facility__Create__04115F34]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [CLO].[Facility] ADD  CONSTRAINT [DF__Facility__LastUp__0505836D]  DEFAULT (getdate()) FOR [LastUpdatedOn]
GO
