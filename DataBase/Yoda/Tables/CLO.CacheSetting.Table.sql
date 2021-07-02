USE [Yoda]
GO
ALTER TABLE [CLO].[CacheSetting] DROP CONSTRAINT [DF__CacheSett__Cache__203967ED]
GO
/****** Object:  Table [CLO].[CacheSetting]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[CacheSetting]
GO
/****** Object:  Table [CLO].[CacheSetting]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[CacheSetting](
	[CacheSettingId] [int] IDENTITY(1,1) NOT NULL,
	[CacheSettingKey] [varchar](255) NOT NULL,
	[CacheExpirationInSeconds] [int] NOT NULL,
 CONSTRAINT [PK_CacheSetting] PRIMARY KEY CLUSTERED 
(
	[CacheSettingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UX_CacheSetting_CacheSettingKey] UNIQUE NONCLUSTERED 
(
	[CacheSettingKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[CacheSetting] ADD  CONSTRAINT [DF__CacheSett__Cache__203967ED]  DEFAULT ((0)) FOR [CacheExpirationInSeconds]
GO
