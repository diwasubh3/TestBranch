USE [Yoda]
GO
/****** Object:  StoredProcedure [CLO].[spGetCreditScoreAlertIssuers]    Script Date: 7/2/2021 5:14:36 AM ******/
DROP PROCEDURE [CLO].[spGetCreditScoreAlertIssuers]
GO
/****** Object:  StoredProcedure [CLO].[spGetCreditScoreAlertIssuers]    Script Date: 7/2/2021 5:14:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CLO].[spGetCreditScoreAlertIssuers]
	@paramFundCode varchar(100),
	@dateId int
AS

select IssuerId,MAX(p.CreditScore) CreditScore,SUM(ISNULL(p.PctExposureNum,0)) PCTExposure 
into #CheckForCrediScoreAlerts
from CLO.vw_Position p with(nolock)
where p.FundCode = @paramFundCode and p.PositionDateId is not null
group by IssuerId

select 
IssuerId
from #CheckForCrediScoreAlerts a
join CLO.ParameterValue pv with(nolock) on pv.ParameterValueNumber = a.CreditScore
join CLO.ParameterType pt with(nolock) on pt.ParameterTypeId = pv.ParameterTypeId and pt.ParameterTypeName = 'Credit Score'
where (pv.ParameterMinValueNumber is not null and PCTExposure < pv.ParameterMinValueNumber) or 
(pv.ParameterMaxValueNumber is not null and PCTExposure > pv.ParameterMaxValueNumber)

drop table #CheckForCrediScoreAlerts

RETURN 0

GO
