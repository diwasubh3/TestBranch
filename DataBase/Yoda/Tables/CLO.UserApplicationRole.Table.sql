USE [Yoda]
GO
ALTER TABLE [CLO].[UserApplicationRole] DROP CONSTRAINT [FK__UserAppli__Appli__2042BE37]
GO
/****** Object:  Table [CLO].[UserApplicationRole]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[UserApplicationRole]
GO
/****** Object:  Table [CLO].[UserApplicationRole]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CLO].[UserApplicationRole](
	[UserApplicationRoleId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ApplicationRoleId] [int] NOT NULL,
 CONSTRAINT [PK_UserApplicationRole] PRIMARY KEY CLUSTERED 
(
	[UserApplicationRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UX_UserApplicationRole_UserId] UNIQUE NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [CLO].[UserApplicationRole]  WITH CHECK ADD FOREIGN KEY([ApplicationRoleId])
REFERENCES [CLO].[ApplicationRole] ([ApplicationRoleId])
GO
