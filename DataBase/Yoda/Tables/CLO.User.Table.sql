USE [Yoda]
GO
ALTER TABLE [CLO].[User] DROP CONSTRAINT [DF__User__LastUpdate__7993D0C1]
GO
ALTER TABLE [CLO].[User] DROP CONSTRAINT [DF__User__CreatedOn__789FAC88]
GO
ALTER TABLE [CLO].[User] DROP CONSTRAINT [DF__User__IsHFAnalys__77AB884F]
GO
ALTER TABLE [CLO].[User] DROP CONSTRAINT [DF__User__IsCLOAnaly__76B76416]
GO
/****** Object:  Table [CLO].[User]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[User]
GO
/****** Object:  Table [CLO].[User]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](100) NOT NULL,
	[IsCLOAnalyst] [bit] NULL,
	[IsHFAnalyst] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[LastUpdatedOn] [datetime] NULL,
	[LastUpdatedBy] [varchar](100) NULL,
	[UserName] [nvarchar](200) NULL,
 CONSTRAINT [PK__User__1788CC4CF58DE359] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[User] ADD  CONSTRAINT [DF__User__IsCLOAnaly__76B76416]  DEFAULT ((0)) FOR [IsCLOAnalyst]
GO
ALTER TABLE [CLO].[User] ADD  CONSTRAINT [DF__User__IsHFAnalys__77AB884F]  DEFAULT ((0)) FOR [IsHFAnalyst]
GO
ALTER TABLE [CLO].[User] ADD  CONSTRAINT [DF__User__CreatedOn__789FAC88]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [CLO].[User] ADD  CONSTRAINT [DF__User__LastUpdate__7993D0C1]  DEFAULT (getdate()) FOR [LastUpdatedOn]
GO
