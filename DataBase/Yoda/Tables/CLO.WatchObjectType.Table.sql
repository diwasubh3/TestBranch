USE [Yoda]
GO
/****** Object:  Table [CLO].[WatchObjectType]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[WatchObjectType]
GO
/****** Object:  Table [CLO].[WatchObjectType]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[WatchObjectType](
	[WatchObjectTypeId] [int] IDENTITY(1,1) NOT NULL,
	[WatchObjectTypeDescription] [varchar](100) NOT NULL,
 CONSTRAINT [PK_WatchObjectType] PRIMARY KEY CLUSTERED 
(
	[WatchObjectTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UX_WatchObjectType_WatchObjectTypeDescription] UNIQUE NONCLUSTERED 
(
	[WatchObjectTypeDescription] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
