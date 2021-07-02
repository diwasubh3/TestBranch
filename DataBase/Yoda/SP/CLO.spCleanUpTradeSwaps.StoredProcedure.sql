USE [Yoda]
GO
/****** Object:  StoredProcedure [CLO].[spCleanUpTradeSwaps]    Script Date: 7/2/2021 5:14:36 AM ******/
DROP PROCEDURE [CLO].[spCleanUpTradeSwaps]
GO
/****** Object:  StoredProcedure [CLO].[spCleanUpTradeSwaps]    Script Date: 7/2/2021 5:14:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CLO].[spCleanUpTradeSwaps]
	@tradeSwapId int = 0
AS
	
	DELETE FROM CLO.TradeSwapSnapShot WHERE TradeSwapId = @tradeSwapId

RETURN 0

GO
