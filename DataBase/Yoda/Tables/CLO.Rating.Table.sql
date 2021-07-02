USE [Yoda]
GO
ALTER TABLE [CLO].[Rating] DROP CONSTRAINT [DF__tmp_ms_xx__LastU__25E7544B]
GO
ALTER TABLE [CLO].[Rating] DROP CONSTRAINT [DF__tmp_ms_xx__Creat__24F33012]
GO
/****** Object:  Table [CLO].[Rating]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[Rating]
GO
/****** Object:  Table [CLO].[Rating]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CLO].[Rating](
	[RatingId] [smallint] IDENTITY(1,1) NOT NULL,
	[RatingDesc] [varchar](100) NOT NULL,
	[Rank] [smallint] NULL,
	[IsMoody] [bit] NULL,
	[IsSnP] [bit] NULL,
	[IsFitch] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[LastUpdatedOn] [datetime] NULL,
	[LastUpdatedBy] [varchar](100) NULL,
 CONSTRAINT [PK__tmp_ms_x__FCCDF87C55E7F844] PRIMARY KEY CLUSTERED 
(
	[RatingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [CLO].[Rating] ADD  CONSTRAINT [DF__tmp_ms_xx__Creat__24F33012]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [CLO].[Rating] ADD  CONSTRAINT [DF__tmp_ms_xx__LastU__25E7544B]  DEFAULT (getdate()) FOR [LastUpdatedOn]
GO
