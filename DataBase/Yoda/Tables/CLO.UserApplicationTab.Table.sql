USE [Yoda]
GO
/****** Object:  Table [CLO].[UserApplicationTab]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[UserApplicationTab]
GO
/****** Object:  Table [CLO].[UserApplicationTab]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CLO].[UserApplicationTab](
	[UserApplicationTab] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[ApplicationTabId] [int] NULL
) ON [PRIMARY]

GO
