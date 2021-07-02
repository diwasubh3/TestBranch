USE [Yoda]
GO
/****** Object:  Table [CLO].[ApplicationTab]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[ApplicationTab]
GO
/****** Object:  Table [CLO].[ApplicationTab]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CLO].[ApplicationTab](
	[ApplicationTabId] [int] NOT NULL,
	[TabName] [nvarchar](100) NULL,
	[TabDescription] [nvarchar](200) NULL
) ON [PRIMARY]

GO
