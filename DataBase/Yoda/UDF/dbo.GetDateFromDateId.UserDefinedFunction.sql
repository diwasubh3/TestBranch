USE [Yoda]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDateFromDateId]    Script Date: 7/2/2021 5:16:18 AM ******/
DROP FUNCTION [dbo].[GetDateFromDateId]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDateFromDateId]    Script Date: 7/2/2021 5:16:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetDateFromDateId] (@dateId INT)  
RETURNS DATETIME AS  
BEGIN 
	DECLARE @dt VARCHAR(8), @theDate DATETIME
	IF(@dateId IS NOT NULL)
	BEGIN
		SET @dt = CONVERT(VARCHAR, @dateId)

		SET @theDate = CONVERT(DATETIME, SUBSTRING(@dt, 5, 2) + '/' + SUBSTRING(@dt, 7, 2) + '/' + SUBSTRING(@dt, 1, 4))
	END

	RETURN @theDate

END

GO
