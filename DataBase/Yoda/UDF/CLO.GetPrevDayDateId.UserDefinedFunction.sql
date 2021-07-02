USE [Yoda]
GO
/****** Object:  UserDefinedFunction [CLO].[GetPrevDayDateId]    Script Date: 7/2/2021 5:16:18 AM ******/
DROP FUNCTION [CLO].[GetPrevDayDateId]
GO
/****** Object:  UserDefinedFunction [CLO].[GetPrevDayDateId]    Script Date: 7/2/2021 5:16:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [CLO].[GetPrevDayDateId]()  
returns INT  --WITH SCHEMABINDING 
BEGIN
	DECLARE @server VARCHAR(100) 
	SELECT @server = @@SERVERNAME
	DECLARE @daycount INT = 1,	@todaysDay INT
	SELECT @todaysDay = DATEPART (weekday , GETDATE() )  

	--IF((@server = 'DC-U-DWH-SQL01' OR @server = 'DC-D-DWH-SQL01'))
	--begin
	--	SELECT @daycount = @daycount + 1
	--	--IF(@todaysDay = 2)
	--	--	SELECT @daycount = @daycount + 2
	--END
    --RETURN 20210630;
	RETURN dbo.[GetDateIdFromDate](DATEADD(day,datediff(day,@daycount,GETDATE()),0))
	
end


GO
