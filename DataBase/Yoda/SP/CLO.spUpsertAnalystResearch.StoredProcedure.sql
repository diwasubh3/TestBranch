USE [Yoda]
GO
/****** Object:  StoredProcedure [CLO].[spUpsertAnalystResearch]    Script Date: 7/2/2021 5:14:36 AM ******/
DROP PROCEDURE [CLO].[spUpsertAnalystResearch]
GO
/****** Object:  StoredProcedure [CLO].[spUpsertAnalystResearch]    Script Date: 7/2/2021 5:14:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CLO].[spUpsertAnalystResearch]
	@issuerId int = 0,
	@asOfDate DATETIME = NULL,
	@agentBank VARCHAR(1000) = null
	
AS

IF (EXISTS(SELECT TOP 1 issuerid FROM clo.analystresearch WHERE issuerid = @issuerId))
BEGIN
	UPDATE clo.AnalystResearch 	SET agentBank = @agentBank	WHERE issuerid=@issuerId
END
ELSE
BEGIN
	INSERT INTO clo.AnalystResearch (IssuerId,AsOfDate,AgentBank) VALUES (@issuerId, @asOfDate, @agentBank)
END

	
RETURN 0

GO
