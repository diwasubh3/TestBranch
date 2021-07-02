USE [Yoda]
GO
/****** Object:  UserDefinedFunction [CLO].[SafeDivideBy]    Script Date: 7/2/2021 5:16:18 AM ******/
DROP FUNCTION [CLO].[SafeDivideBy]
GO
/****** Object:  UserDefinedFunction [CLO].[SafeDivideBy]    Script Date: 7/2/2021 5:16:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [CLO].[SafeDivideBy](@Numerator decimal(38,12), @Denominator decimal(38,12))
	RETURNS decimal(38,12)
AS
BEGIN
	
	IF @Denominator IS NULL RETURN NULL
	
	IF @Denominator = 0 RETURN 0

	RETURN @Numerator/@Denominator
		
END

GO
