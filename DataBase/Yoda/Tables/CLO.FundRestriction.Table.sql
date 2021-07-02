USE [Yoda]
GO
ALTER TABLE [CLO].[FundRestriction] DROP CONSTRAINT [FK__FundRestr__Opera__6BCEF5F8]
GO
ALTER TABLE [CLO].[FundRestriction] DROP CONSTRAINT [FK__FundRestr__FundR__6ADAD1BF]
GO
ALTER TABLE [CLO].[FundRestriction] DROP CONSTRAINT [FK__FundRestr__FundI__69E6AD86]
GO
ALTER TABLE [CLO].[FundRestriction] DROP CONSTRAINT [FK__FundRestr__Field__68F2894D]
GO
/****** Object:  Table [CLO].[FundRestriction]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP TABLE [CLO].[FundRestriction]
GO
/****** Object:  Table [CLO].[FundRestriction]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CLO].[FundRestriction](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FundId] [int] NOT NULL,
	[FundRestrictionTypeId] [smallint] NOT NULL,
	[FieldId] [smallint] NOT NULL,
	[OperatorId] [smallint] NOT NULL,
	[RestrictionValue] [numeric](38, 10) NOT NULL,
 CONSTRAINT [PK__FundRest__3214EC071F7D10AE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [CLO].[FundRestriction]  WITH CHECK ADD FOREIGN KEY([FieldId])
REFERENCES [CLO].[Field] ([FieldId])
GO
ALTER TABLE [CLO].[FundRestriction]  WITH CHECK ADD FOREIGN KEY([FundId])
REFERENCES [CLO].[Fund] ([FundId])
GO
ALTER TABLE [CLO].[FundRestriction]  WITH CHECK ADD FOREIGN KEY([FundRestrictionTypeId])
REFERENCES [CLO].[FundRestrictionType] ([FundRestrictionTypeId])
GO
ALTER TABLE [CLO].[FundRestriction]  WITH CHECK ADD FOREIGN KEY([OperatorId])
REFERENCES [CLO].[Operator] ([OperatorId])
GO
