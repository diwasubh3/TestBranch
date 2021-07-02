USE [Yoda]
GO
/****** Object:  Table [CLO].[ApplicationRole]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[ApplicationRole]
GO
/****** Object:  Table [CLO].[ApplicationRole]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[ApplicationRole](
	[ApplicationRoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleDescription] [varchar](100) NOT NULL,
 CONSTRAINT [PK_ApplicationRole] PRIMARY KEY CLUSTERED 
(
	[ApplicationRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UX_ApplicationRole_RoleDescription] UNIQUE NONCLUSTERED 
(
	[RoleDescription] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
