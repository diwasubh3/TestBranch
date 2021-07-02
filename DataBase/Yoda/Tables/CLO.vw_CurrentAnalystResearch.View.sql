USE [Yoda]
GO
/****** Object:  View [CLO].[vw_CurrentAnalystResearch]    Script Date: 7/2/2021 5:17:42 AM ******/
DROP VIEW [CLO].[vw_CurrentAnalystResearch]
GO
/****** Object:  View [CLO].[vw_CurrentAnalystResearch]    Script Date: 7/2/2021 5:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [CLO].[vw_CurrentAnalystResearch]
AS
    WITH    analystrefresh_cfe
              AS (
                  SELECT    D.AnalystResearchDetailId AS AnalystResearchId, IssuerId, H.CLOAnalystId AS CLOAnalystUserId
					, H.HFAnalystId AS HFAnalystUserId, AsOfDate, CreditScore, CAST(NULL AS DECIMAL(10, 4)) LiquidityScore
					, CAST(NULL AS DECIMAL(10, 4)) AS OneLLeverage, D.SeniorLeverage
					, D.EnterpriseValue, D.LTMFCF, TotalLeverage, CAST(NULL AS DECIMAL(10, 4)) AS EVMultiple
					, LTMRevenues, LTMEBITDA, FCF, Comments, BusinessDescription, GETDATE() AS CreatedOn, 'YodaUser' AS CreatedBy
					, H.Sponsor
					, H.[LiborCategory]
					, H.[LiborTransitionNote]
					, GETDATE() AS LastUpdatedOn, 'YodaUser' AS LastUpdatedBy, AgentBank
					, ROW_NUMBER() OVER (PARTITION BY IssuerId ORDER BY AsOfDate DESC) AS ROWNUM
                  FROM      CLO.AnalystResearchDetail D WITH (NOLOCK) INNER JOIN CLO.AnalystResearchHeader H WITH (NOLOCK)
				  ON H.AnalystResearchHeaderId = D.AnalystResearchHeaderId
                  WHERE     AsOfDate IS NULL
                            OR AsOfDate <= CONVERT(DATE, GETDATE())
                 )
    SELECT  AnalystResearchId, a.IssuerId, a.CLOAnalystUserId, a.HFAnalystUserId, cloanalyst.AnalystDesc CLOAnalyst
		, hfanalyst.AnalystDesc HFAnalyst, AsOfDate, CreditScore, LiquidityScore, OneLLeverage, TotalLeverage
		, EVMultiple, LTMRevenues, LTMEBITDA, FCF, Comments, issuer.IssuerDesc, a.BusinessDescription, a.AgentBank
		, SeniorLeverage, EnterpriseValue, LTMFCF, issuer.IsPrivate, a.Sponsor, a.[LiborCategory],a.[LiborTransitionNote]
    FROM    analystrefresh_cfe a WITH (NOLOCK)
    LEFT JOIN CLO.vw_YorkCoreGenevaAnalyst cloanalyst WITH (NOLOCK) ON cloanalyst.AnalystId = a.CLOAnalystUserId
    LEFT JOIN CLO.vw_YorkCoreGenevaAnalyst hfanalyst WITH (NOLOCK) ON hfanalyst.AnalystId = a.HFAnalystUserId
    JOIN    CLO.Issuer issuer WITH (NOLOCK) ON a.IssuerId = issuer.IssuerId
    WHERE   ROWNUM = 1; 



GO
