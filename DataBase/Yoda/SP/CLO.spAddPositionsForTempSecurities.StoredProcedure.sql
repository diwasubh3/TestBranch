USE [Yoda]
GO
/****** Object:  StoredProcedure [CLO].[spAddPositionsForTempSecurities]    Script Date: 7/2/2021 5:14:36 AM ******/
DROP PROCEDURE [CLO].[spAddPositionsForTempSecurities]
GO
/****** Object:  StoredProcedure [CLO].[spAddPositionsForTempSecurities]    Script Date: 7/2/2021 5:14:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CLO].[spAddPositionsForTempSecurities]
	
AS

INSERT INTO [CLO].[Position]
           ([FundId]
           ,[SecurityId]
           ,[DateId]
           ,[MarketValue]
           ,[Exposure]
           ,[PctExposure]
           ,[PxPrice]
           ,[IsCovLite]
           ,[CountryId]
           ,[CreatedOn]
           ,[CreatedBy]
           ,[LastUpdatedOn]
           ,[LastUpdatedBy])
SELECT f.FundId,s.SecurityId,CLO.GetPrevDayDateId(),0,0,0,0,0,NULL,GETDATE(),'System',NULL,null FROM CLO.Security s WITH(NOLOCK)
LEFT JOIN CLO.Position p ON p.SecurityId = s.SecurityId AND p.DateId = CLO.GetPrevDayDateId()
CROSS JOIN CLO.Fund f WITH(NOLOCK)
WHERE SourceId = 1 AND (IsDeleted IS NULL OR IsDeleted = 0) AND p.PositionId IS NULL

RETURN 0

GO
