USE [Yoda]
GO
ALTER TABLE [CLO].[Issuer] DROP CONSTRAINT [DF__Issuer__IsPrivat__28CEADEE]
GO
ALTER TABLE [CLO].[Issuer] DROP CONSTRAINT [DF__tmp_ms_xx__LastU__03923C47]
GO
ALTER TABLE [CLO].[Issuer] DROP CONSTRAINT [DF__tmp_ms_xx__Creat__029E180E]
GO
/****** Object:  Table [CLO].[Issuer]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[Issuer]
GO
/****** Object:  Table [CLO].[Issuer]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[Issuer](
	[IssuerId] [int] IDENTITY(1,1) NOT NULL,
	[IssuerDesc] [varchar](100) NOT NULL,
	[IssuerCode] [varchar](100) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[LastUpdatedOn] [datetime] NULL,
	[LastUpdatedBy] [varchar](100) NULL,
	[IsPrivate] [bit] NOT NULL,
 CONSTRAINT [PK__tmp_ms_x__863219C0BADB3469] PRIMARY KEY CLUSTERED 
(
	[IssuerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[Issuer] ADD  CONSTRAINT [DF__tmp_ms_xx__Creat__029E180E]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [CLO].[Issuer] ADD  CONSTRAINT [DF__tmp_ms_xx__LastU__03923C47]  DEFAULT (getdate()) FOR [LastUpdatedOn]
GO
ALTER TABLE [CLO].[Issuer] ADD  CONSTRAINT [DF__Issuer__IsPrivat__28CEADEE]  DEFAULT ((0)) FOR [IsPrivate]
GO
