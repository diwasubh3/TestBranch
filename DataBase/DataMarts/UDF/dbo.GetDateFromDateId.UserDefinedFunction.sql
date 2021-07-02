USE [DataMarts]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDateFromDateId]    Script Date: 7/2/2021 5:20:20 AM ******/
DROP FUNCTION [dbo].[GetDateFromDateId]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDateFromDateId]    Script Date: 7/2/2021 5:20:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetDateFromDateId] (@dateId INT)  
RETURNS Date AS  
BEGIN 
	DECLARE @dt VARCHAR(8), @theDate DATE
	IF(@dateId IS NOT NULL)
	BEGIN
		SET @dt = CONVERT(VARCHAR, @dateId)

		SET @theDate = Convert(Date, substring(@dt, 5, 2) + '/' + substring(@dt, 7, 2) + '/' + substring(@dt, 1, 4))
	END

	RETURN @theDate

END

GO
