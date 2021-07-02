USE [Yoda]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDateIdFromDate]    Script Date: 7/2/2021 5:16:18 AM ******/
DROP FUNCTION [dbo].[GetDateIdFromDate]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDateIdFromDate]    Script Date: 7/2/2021 5:16:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[GetDateIdFromDate]
(
	@dt AS DATETIME
)
RETURNS INT   WITH SCHEMABINDING 
BEGIN	
	
	RETURN  DATEPART(yyyy, @dt) * 10000 +  DATEPART(m, @dt) * 100 + DATEPART(dd, @dt)

END

GO
