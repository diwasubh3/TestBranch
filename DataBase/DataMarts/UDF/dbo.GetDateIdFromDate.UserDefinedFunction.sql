USE [DataMarts]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDateIdFromDate]    Script Date: 7/2/2021 5:20:20 AM ******/
DROP FUNCTION [dbo].[GetDateIdFromDate]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDateIdFromDate]    Script Date: 7/2/2021 5:20:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetDateIdFromDate]
(
	@dt as datetime
)
returns INT
begin	
	
	RETURN  DATEPART(yyyy, @dt) * 10000 +  DATEPART(m, @dt) * 100 + DATEPART(dd, @dt)

end


GO
