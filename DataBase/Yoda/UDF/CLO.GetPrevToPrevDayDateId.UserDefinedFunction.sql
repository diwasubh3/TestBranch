USE [Yoda]
GO
/****** Object:  UserDefinedFunction [CLO].[GetPrevToPrevDayDateId]    Script Date: 7/2/2021 5:16:18 AM ******/
DROP FUNCTION [CLO].[GetPrevToPrevDayDateId]
GO
/****** Object:  UserDefinedFunction [CLO].[GetPrevToPrevDayDateId]    Script Date: 7/2/2021 5:16:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [CLO].[GetPrevToPrevDayDateId]()
RETURNS INT  WITH SCHEMABINDING 
BEGIN
	DECLARE @server VARCHAR(100) 
	SELECT @server = @@SERVERNAME
	DECLARE @daycount INT = 2,	@todaysDay INT
	SELECT @todaysDay = DATEPART (WEEKDAY , GETDATE() )  

	--IF(@todaysDay = 2)
	--	SELECT @daycount = @daycount + 2

	--IF((@server = 'DC-U-DWH-SQL01' OR @server = 'DC-D-DWH-SQL01') AND (@todaysDay = 2))
	--BEGIN
	--	SELECT @daycount = @daycount + 1
	--END
		
	RETURN dbo.[GetDateIdFromDate](DATEADD(DAY,DATEDIFF(DAY,@daycount,GETDATE()),0))
	
END


GO
