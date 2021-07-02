﻿CREATE VIEW [CLO].[WsoExtractAssets] AS

SELECT
    EA.ExtractAssetKey,
    EA.DatasetKey,
    EA.DateId,
    EA.AssetId,
    EA.Asset,
    EA.ABSAverageLifeCollateralDescriptor,
    EA.ABSCategory,
    EA.ABSCurrentFactor,
    EA.ABSSpecificCode,
    EA.ABSType,
    EA.AccretedValue,
    EA.AccretionFactor,
    EA.AccruedFees,
    EA.AccruedInterest,
    EA.AggregateAmortCost,
    EA.AssetCategoryMoody,
    EA.AssetCategorySP,
    EA.AssetType,
    EA.AttachedEquity,
    EA.AvgLife,
    EA.CalculationAmount,
    EA.CalculationAmount2,
    EA.CalculationAmount3,
    EA.CalendarID,
    EA.CallDate,
    EA.CapitalizedInterest,
    EA.ConvertibleType,
    EA.Convexity,
    EA.CostBasis,
    EA.CostPrice,
    EA.CountryOfOperation,
    EA.CouponType,
    EA.CreditLinkedAmount,
    EA.CreditLinkedCounterInstitution,
    EA.CurrencyOther,
    EA.CurrencyTypeID,
    EA.CurrentYield,
    EA.CurrentYTM,
    EA.CurrentYTW,
    EA.CUSIP,
    EA.DateOffset,
    EA.DayCount,
    EA.DefaultDate,
    EA.DefaultProbabilityMoody,
    EA.DefaultType,
    EA.Description,
    EA.EarnedInterest,
    EA.EmergingMarketRegion,
    EA.ExclusionAmountMoody,
    EA.ExclusionAmountSP,
    EA.ExpectedLossMoody,
    EA.FacilityType,
    EA.FirstPaymentDate,
    EA.FirstSettleDate,
    EA.FixedRate,
    EA.Frequency,
    EA.Guarantor,
    EA.Insurer,
    EA.InterestAccrualDate,
    EA.InterestAndFeesProjected,
    EA.InterestAndFeesProjectedForNextPeriod,
    EA.InterestAndFeesToDate,
    EA.InterestAndFeesToDateForNextPeriod,
    EA.IsABS,
    EA.IsBankruptcyRelated,
    EA.IsBridgeSecurity,
    EA.IsCallable,
    EA.IsConflictOfInterest,
    EA.IsConvertible,
    EA.IsCreditAvailable,
    EA.IsCreditDefaultSwap,
    EA.IsCurrentPay,
    EA.IsDeepDiscount,
    EA.IsDefeased,
    EA.IsDeferredInterestOutstanding,
    EA.IsDeferredInterestAllowed,
    EA.IsDerivative,
    EA.IsDIP,
    EA.IsEligibleInvestment,
    EA.IsEmergingMarket,
    EA.IsEnhancedBond,
    EA.IsEstimatedRatingFitch,
    EA.IsEstimatedRatingMoody,
    EA.IsEstimatedRatingSP,
    EA.IsException,
    EA.IsFXRisk,
    EA.IsGovtSponsored,
    EA.IsGuaranteed,
    EA.IsHedged,
    EA.ISIN,
    EA.IsInDefault,
    EA.IsIO,
    EA.IsLBOFund,
    EA.IsLBR6MOAgent,
    EA.IsLBR6MOMajor,
    EA.IsLBR6MOSuper,
    EA.IsLeaseFinancingTransaction,
    EA.IsMezzanine,
    EA.IsMostSenior,
    EA.IsOffer,
    EA.IsOriginal,
    EA.IsPIKSecurity,
    EA.IsPO,
    EA.IsPreferredSecurity,
    EA.IsRatingFitchDerived,
    EA.IsRatingMoodyDerived,
    EA.IsRatingSPDerived,
    EA.IsResecuritization,
    EA.IsRestructured,
    EA.IsSFO,
    EA.IsSovereign,
    EA.IsSpecialSituation,
    EA.IsSPVJurisdiction,
    EA.Issuer,
    EA.IssueDate,
    EA.IssueSize,
    EA.IssuingTransaction,
    EA.IsSynthetic,
    EA.IsSyntheticCounterInstitutionInDefault,
    EA.IsTaxJurisdiction,
    EA.LCAmount,
    EA.LeadUnderwriter,
    EA.LiborOptionExists,
    EA.LienType,
    EA.Liquidity,
    EA.LongDatedAmount,
    EA.LossRateMoody,
    EA.LossSeverityMoody,
    EA.MacaulayDuration,
    EA.MarkDate,
    EA.MarketValue,
    EA.MarketValueAdjustedMoody,
    EA.MarketValueAdjustedSP,
    EA.MarketValueOCMoody,
    EA.MarketValueOCSP,
    EA.MarketValueSettleTrue,
    EA.MarkFactor,
    EA.MarkPrice,
    EA.MaturityDate,
    EA.MaturityExceptions,
    EA.ModDuration,
    EA.NextPaymentDate,
    EA.OriginalCapPercent,
    EA.OriginalPAPI,
    EA.Outstanding,
    EA.OutstandingAdjusted,
    EA.PAI,
    EA.ParAmount,
    EA.ParAmountTraded,
    EA.PaymentNonBusinessDirection,
    EA.PaymentOffsetDays,
    EA.PaymentOffsetDirection,
    EA.PaymentOffsetType,
    EA.PIKBeginDate,
    EA.PIKCapInterest,
    EA.PIKMargin,
    EA.PIKPercentage,
    EA.PrimeOptionExists,
    EA.PrincipalBalance,
    EA.PrincipalBalanceEI,
    EA.PriorityCategoryFitch,
    EA.PriorityCategoryMoody,
    EA.PriorityCategorySP,
    EA.PutDate,
    EA.Quantity,
    EA.RateAdjustFreq,
    EA.RateOption,
    EA.RatingMoody,
    EA.RatingMoodyAtIssuance,
    EA.RatingMoodyDerived,
    EA.RatingMoodyIssuance,
    EA.RatingMoodySecurity,
    EA.RatingMoodyShort,
    EA.RatingFitch,
    EA.RatingFitchAtIssuance,
    EA.RatingFitchDerived,
    EA.RatingFitchSecurity,
    EA.RatingSP,
    EA.RatingSPAtIssuance,
    EA.RatingSPDerived,
    EA.RatingSPSecurity,
    EA.RatingSPShort,
    EA.RatingDCR,
    EA.RatingDCRDerived,
    EA.Region,
    EA.RecoveryRateFitch,
    EA.RecoveryRateMoody,
    EA.RecoveryRateSP,
    EA.ReferenceAssetID,
    EA.RegistrationType,
    EA.SecurityID,
    EA.SecurityLevel,
    EA.SecurityLevelFitch,
    EA.SecurityLevelMoody,
    EA.SecurityLevelSP,
    EA.SelfPurchasedAmount,
    EA.Servicer,
    EA.SFOType,
    EA.SpreadLibor,
    EA.SpreadPrime,
    EA.StdDevMoody,
    EA.SyntheticCounterInstitution,
    EA.SyntheticType,
    EA.TradesWithAccrued,
    EA.TransferAgent,
    EA.UpgradedDowngraded,
    EA.WeightedAvgAllInRate,
    EA.WeightedAvgSpread,
    EA.WeightedAvgDaysToReset,
    EA.WeightedAvgDaysToResetAmount,
    EA.YieldToWorst,
    EA.YTM,
    EA.YTW,
    EA.UserAmount1,
    EA.UserAmount2,
    EA.UserAmount3,
    EA.UserAmount4,
    EA.UserAmount5,
    EA.UserAmount6,
    EA.UserAmount7,
    EA.UserAmount8,
    EA.UserAmount9,
    EA.UserAmount10,
    EA.UserAmount11,
    EA.UserAmount12,
    EA.UserAmount13,
    EA.UserAmount14,
    EA.UserAmount15,
    EA.UserAmount16,
    EA.UserAmount17,
    EA.UserAmount18,
    EA.UserAmount19,
    EA.UserAmount20,
    EA.UserFlag1 AS [Is Second Lien],
    EA.UserFlag2,
    EA.UserFlag3 AS [Is First Lien],
    EA.UserFlag4,
    EA.UserFlag5 AS [Is Current Pay as Default],
    EA.UserFlag6,
    EA.UserFlag7,
    EA.UserFlag8,
    EA.UserFlag9 AS [Is Covenant Pari Passu],
    EA.UserFlag10 AS [Is Moody Senior Secured Loan],
    EA.UserFlag11 AS [Is Purchased Discount],
    EA.UserFlag12,
    EA.UserFlag13,
    EA.UserFlag14 AS [Is Cov-Lite],
    EA.UserFlag15 AS [Is Moody's DP Rating Derived],
    EA.UserFlag16,
    EA.UserFlag17,
    EA.UserFlag18,
    EA.UserFlag19,
    EA.UserFlag20,
    EA.UserString1 AS [zIs Floor in Effect],
    EA.UserString2 AS [Counterparty Type],
    EA.UserString3 AS [OC Recovery Type],
    EA.UserString4 AS [Moody's DP Rating - WARF (ADJ)],
    EA.UserString5 AS [Moody's CF Rating],
    EA.UserString6 AS [Moody's DP Rating - WARF],
    EA.UserString7 AS [S&P Issuer Rating],
    EA.UserString8 AS [Moody's DP Rating (Unnotched) - WARF],
    EA.UserString9 AS [Moody's Credit Watch],
    EA.UserString10 AS [Issuer Name Alternative],
    EA.UserString11 AS [Issuer Country],
    EA.UserString12 AS [SIC Moody],
    EA.UserString13 AS [SIC S&P],
    EA.UserString14 AS [Moody's Outlook],
    EA.UserString15 AS [S&P Credit Watch],
    EA.UserString16 AS [WAL Date GV (Hidden)],
    EA.UserPercentage1 AS [Adjusted WAS],
    EA.UserPercentage2 AS [Adjusted WAC],
    EA.UserPercentage3 AS [All-In-Rate (w/Floor)],
    EA.UserPercentage4 AS [LIBOR Floor for accrual WAS],
    EA.UserPercentage5 AS [LIBOR Floor Credit Addback],
    EA.UserPercentage6 AS [LIBOR Base Rate on Notes],
    EA.UserDecimal1 AS [Cost Price Discounts],
    EA.UserDecimal2 AS [Cost Price (Discounts)],
    EA.UserDecimal3,
    EA.UserDecimal4,
    EA.UserDecimal5,
    EA.UserNumber1 AS [WAL Date Case (Hidden)],
    EA.UserNumber2,
    EA.UserNumber3,
    EA.UserNumber4,
    EA.UserNumber5,
    EA.UserDate1,
    EA.UserDate2,
    EA.UserDate3,
    EA.UserDate4,
    EA.UserDate5,
    EA.FacilityIncrease,
    EA.ParAmountNativeHypo,
    EA.OutstandingNativeHypo,
    EA.BankDeal_GlobalAmount,
    EA.ExcessCurrentPay,
    EA.ExcessMoodyCaa,
    EA.ExcessSPCCC,
    EA.FeeSpread,
    EA.InterestFromReinvestment,
    EA.IsDelayedDraw,
    EA.IsRatingMoodyPending,
    EA.LiborBaseRateFloor,
    EA.MarkPrice_BidPrice,
    EA.PaymentDate,
    EA.PrimarySpread,
    EA.PrimarySpreadType,
    EA.PrimeBaseRateFloor,
    EA.PriorityCategorySPI,
    EA.PriorityCategorySPII,
    EA.PriorityCategorySPIII,
    EA.PriorityCategorySPIV,
    EA.PriorityCategorySPV,
    EA.PriorityCategorySPVI,
    EA.RatingMoodyIsShadow,
    EA.RatingMoodyIssue,
    EA.RatingSPIssue,
    EA.RatingSPIssueCreditWatch,
    EA.RecoveryAmountCurrentPay,
    EA.RecoveryAmountMoodyCaa,
    EA.RecoveryAmountSPCCC,
    EA.RecoveryRateMoodyFeed,
    EA.RecoveryRateSPI,
    EA.RecoveryRateSPII,
    EA.RecoveryRateSPIII,
    EA.RecoveryRateSPIV,
    EA.RecoveryRateSPV,
    EA.RecoveryRateSPVI,
    EA.CoreSystem,
    RecordModified,
    Scenario,
    MarkPrice_AskPrice,
    RatingMoodyIssueCreditWatch,
	EA.CapitalizedInterestOrig,
	EA.[SnPAssetRecoveryRating]
FROM DataMarts.dbo.WsoExtractAsset EA
WHERE EA.SecurityID LIKE 'LX%'







