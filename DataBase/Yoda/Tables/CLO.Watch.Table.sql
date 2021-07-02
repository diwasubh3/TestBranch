USE [Yoda]
GO
ALTER TABLE [CLO].[Watch] DROP CONSTRAINT [DF__Watch__WatchType__26E6657C]
GO
ALTER TABLE [CLO].[Watch] DROP CONSTRAINT [DF__Watch__WatchLast__1AF4C48C]
GO
/****** Object:  Table [CLO].[Watch]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[Watch]
GO
/****** Object:  Table [CLO].[Watch]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[Watch](
	[WatchId] [int] IDENTITY(1,1) NOT NULL,
	[WatchObjectTypeId] [smallint] NOT NULL,
	[WatchObjectId] [int] NOT NULL,
	[WatchComments] [varchar](500) NULL,
	[WatchUser] [varchar](100) NULL,
	[WatchLastUpdatedOn] [datetime] NULL,
	[WatchTypeId] [int] NOT NULL,
 CONSTRAINT [PK_Watch] PRIMARY KEY CLUSTERED 
(
	[WatchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [uq_WatchObjectId_WatchObjectType_WatchTypeId] UNIQUE NONCLUSTERED 
(
	[WatchObjectId] ASC,
	[WatchObjectTypeId] ASC,
	[WatchTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[Watch] ADD  CONSTRAINT [DF__Watch__WatchLast__1AF4C48C]  DEFAULT (getdate()) FOR [WatchLastUpdatedOn]
GO
ALTER TABLE [CLO].[Watch] ADD  CONSTRAINT [DF__Watch__WatchType__26E6657C]  DEFAULT ((1)) FOR [WatchTypeId]
GO
