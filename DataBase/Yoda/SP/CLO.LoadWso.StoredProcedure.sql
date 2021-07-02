USE [Yoda]
GO
/****** Object:  StoredProcedure [CLO].[LoadWso]    Script Date: 7/2/2021 5:14:36 AM ******/
DROP PROCEDURE [CLO].[LoadWso]
GO
/****** Object:  StoredProcedure [CLO].[LoadWso]    Script Date: 7/2/2021 5:14:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CLO].[LoadWso]
(
    @datasetKey INT,
	@asOfDateId INT
)
AS
BEGIN
	DECLARE @datasetKeys AS CLO.DatasetKeys
	INSERT INTO @datasetKeys VALUES (@datasetKey)
	EXEC CLO.LoadWso_ByDatasetKeys @datasetKeys, @asOfDateId
END


GO
