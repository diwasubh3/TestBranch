USE [Yoda]
GO
/****** Object:  StoredProcedure [CLO].[spGetTradeSwaps]    Script Date: 7/2/2021 5:14:36 AM ******/
DROP PROCEDURE [CLO].[spGetTradeSwaps]
GO
/****** Object:  StoredProcedure [CLO].[spGetTradeSwaps]    Script Date: 7/2/2021 5:14:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CLO].[spGetTradeSwaps]
	@fundId int = 0,
	@tradeSwapId int
AS
	SELECT * FROM [CLO].[vw_TradeSwap]
	WHERE SellFundId = @fundId AND [TradeSwapId] = @tradeSwapId AND BuyFundId = @fundId
	ORDER BY [TradeSwapSnapshotId]
RETURN 0

GO
