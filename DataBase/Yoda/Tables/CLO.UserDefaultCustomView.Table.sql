USE [Yoda]
GO
/****** Object:  Table [CLO].[UserDefaultCustomView]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[UserDefaultCustomView]
GO
/****** Object:  Table [CLO].[UserDefaultCustomView]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[UserDefaultCustomView](
	[UserDefaultCustomViewId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ViewId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[LastUpdatedOn] [datetime] NULL,
	[LastUpdatedBy] [varchar](100) NULL,
 CONSTRAINT [PK_UserDefaultCustomView] PRIMARY KEY CLUSTERED 
(
	[UserDefaultCustomViewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
