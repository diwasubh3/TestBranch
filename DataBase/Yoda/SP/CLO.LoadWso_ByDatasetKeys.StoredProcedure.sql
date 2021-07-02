USE [Yoda]
GO
/****** Object:  StoredProcedure [CLO].[LoadWso_ByDatasetKeys]    Script Date: 7/2/2021 5:14:36 AM ******/
DROP PROCEDURE [CLO].[LoadWso_ByDatasetKeys]
GO
/****** Object:  StoredProcedure [CLO].[LoadWso_ByDatasetKeys]    Script Date: 7/2/2021 5:14:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CLO].[LoadWso_ByDatasetKeys]
(
    @datasetKeys CLO.DatasetKeys READONLY,
	@asOfDateId INT
)
AS
BEGIN
	BEGIN TRANSACTION
	EXEC CLO.LoadWso_Country @asOfDateId, @datasetKeys
	EXEC CLO.LoadWso_Industry @asOfDateId, @datasetKeys
	EXEC CLO.LoadWso_Rating @asOfDateId, @datasetKeys
	EXEC CLO.LoadWso_Fund @asOfDateId, @datasetKeys
	EXEC CLO.LoadWso_Facility @asOfDateId, @datasetKeys
	EXEC CLO.LoadWso_Issuer @asOfDateId, @datasetKeys
	EXEC CLO.LoadWso_Security @asOfDateId, @datasetKeys
	EXEC CLO.LoadWso_MarketData @asOfDateId, @datasetKeys
	EXEC CLO.LoadWso_Position @asOfDateId, @datasetKeys
	COMMIT TRANSACTION
END


GO
