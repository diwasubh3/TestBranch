using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace YCM.CLO.DataAccess.Models.Mapping
{
    public class vw_PositionMap : EntityTypeConfiguration<vw_Position>
    {
        public vw_PositionMap()
        {
            // Primary Key
            this.HasKey(t => new { t.SecurityId, t.FundId});

            // Properties
            this.Property(t => t.PositionId)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.PositionDateId)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Exposure)
                .HasMaxLength(4000);

            this.Property(t => t.BODExposure)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.PctExposure)
                .HasMaxLength(4000);

            this.Property(t => t.FundCode)
                .HasMaxLength(100);

            this.Property(t => t.FundDesc)
                .HasMaxLength(500);

            this.Property(t => t.SecurityCode)
                .HasMaxLength(100);

            this.Property(t => t.SecurityDesc)
                .HasMaxLength(100);

            this.Property(t => t.BBGId)
                .HasMaxLength(100);

            this.Property(t => t.Issuer)
                .HasMaxLength(100);

            this.Property(t => t.Facility)
                .HasMaxLength(100);

            this.Property(t => t.CallDate)
                .HasMaxLength(10);

            this.Property(t => t.CountryDesc)
                .HasMaxLength(100);

            this.Property(t => t.MaturityDate)
                .HasMaxLength(10);

            this.Property(t => t.SnpIndustry)
                .HasMaxLength(100);

            this.Property(t => t.MoodyIndustry)
                .HasMaxLength(100);

            this.Property(t => t.IsCovLite)
                .IsRequired()
                .HasMaxLength(1);

            this.Property(t => t.IsFloating)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.LienType)
                .HasMaxLength(100);

            this.Property(t => t.WatchComments)
                .HasMaxLength(500);

            this.Property(t => t.WatchLastUpdatedOn)
                .HasMaxLength(4000);

            this.Property(t => t.WatchUser)
                .HasMaxLength(100);

            this.Property(t => t.OrigSecurityCode)
                .HasMaxLength(100);

            this.Property(t => t.OrigSecurityDesc)
                .HasMaxLength(500);

            this.Property(t => t.OrigBBGId)
                .HasMaxLength(1000);

            this.Property(t => t.OrigIssuer)
                .HasMaxLength(100);

            this.Property(t => t.OrigFacility)
                .HasMaxLength(100);

            this.Property(t => t.OrigCallDate)
                .HasMaxLength(10);

            this.Property(t => t.OrigMaturityDate)
                .HasMaxLength(10);

            this.Property(t => t.OrigSnpIndustry)
                .HasMaxLength(100);

            this.Property(t => t.OrigMoodyIndustry)
                .HasMaxLength(100);

            this.Property(t => t.OrigIsFloating)
                .HasMaxLength(8);

            this.Property(t => t.OrigLienType)
                .HasMaxLength(100);

            this.Property(t => t.OrigMoodyFacilityRatingAdjusted)
                .HasMaxLength(100);

            this.Property(t => t.OrigMoodyCashFlowRatingAdjusted)
                .HasMaxLength(100);

            this.Property(t => t.SecurityLastUpdatedBy)
                .HasMaxLength(100);

            this.Property(t => t.SecurityCreatedBy)
                .HasMaxLength(100);

            this.Property(t => t.Bid)
                .HasMaxLength(30);

            this.Property(t => t.Offer)
                .HasMaxLength(30);

            this.Property(t => t.PrevDayBid)
                .HasMaxLength(30);

            this.Property(t => t.PrevDayOffer)
                .HasMaxLength(30);

            this.Property(t => t.CostPrice)
                .HasMaxLength(30);

            this.Property(t => t.PctBidDiff)
                .HasMaxLength(4000);

            this.Property(t => t.PctOfferDiff)
                .HasMaxLength(4000);

            this.Property(t => t.MoodyCashFlowRating)
                .HasMaxLength(100);

            this.Property(t => t.MoodyCashFlowRatingAdjusted)
                .HasMaxLength(100);

            this.Property(t => t.MoodyFacilityRating)
                .HasMaxLength(100);

            this.Property(t => t.SnPIssuerRating)
                .HasMaxLength(100);

            this.Property(t => t.SnPIssuerRatingAdjusted)
                .HasMaxLength(100);

            this.Property(t => t.SnPFacilityRating)
                .HasMaxLength(100);

            this.Property(t => t.SnPfacilityRatingAdjusted)
                .HasMaxLength(100);

            this.Property(t => t.SnPRecoveryRating)
                .HasMaxLength(100);

            this.Property(t => t.MoodyOutlook)
                .HasMaxLength(1);

            this.Property(t => t.MoodyWatch)
                .HasMaxLength(1);

            this.Property(t => t.SnPWatch)
                .HasMaxLength(1);

            this.Property(t => t.NextReportingDate)
                .HasMaxLength(10);

            this.Property(t => t.FiscalYearEndDate)
                .HasMaxLength(10);

            this.Property(t => t.AgentBank)
                .HasMaxLength(100);

            this.Property(t => t.TotalPar)
                .HasMaxLength(4000);

            this.Property(t => t.BODTotalPar)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.MoodyFacilityRatingAdjusted)
                .HasMaxLength(100);

            this.Property(t => t.CLOAnalyst)
                .HasMaxLength(100);

            this.Property(t => t.HFAnalyst)
                .HasMaxLength(100);

            this.Property(t => t.AsOfDate)
                .HasMaxLength(10);

            this.Property(t => t.TotalLeverage)
                .HasMaxLength(30);

            this.Property(t => t.EVMultiple)
                .HasMaxLength(30);

            this.Property(t => t.LTMRevenues)
                .HasMaxLength(30);

            this.Property(t => t.LTMEBITDA)
                .HasMaxLength(30);

            this.Property(t => t.FCF)
                .HasMaxLength(30);

            // Table & Column Mappings
            this.ToTable("vw_Position", "CLO");
            this.Property(t => t.PositionId).HasColumnName("PositionId");
            this.Property(t => t.PositionDateId).HasColumnName("PositionDateId");
            this.Property(t => t.Exposure).HasColumnName("Exposure");
            this.Property(t => t.NumExposure).HasColumnName("NumExposure");
            this.Property(t => t.BODExposure).HasColumnName("BODExposure");
            this.Property(t => t.BODwithBuyExposure).HasColumnName("BODwithBuyExposure");
            this.Property(t => t.PctExposure).HasColumnName("PctExposure");
            this.Property(t => t.PxPrice).HasColumnName("PxPrice");
            this.Property(t => t.PctExposureNum).HasColumnName("PctExposureNum");
            this.Property(t => t.FundId).HasColumnName("FundId");
            this.Property(t => t.FundCode).HasColumnName("FundCode");
            this.Property(t => t.FundDesc).HasColumnName("FundDesc");
            this.Property(t => t.SecurityId).HasColumnName("SecurityId");
            this.Property(t => t.SecurityCode).HasColumnName("SecurityCode");
            this.Property(t => t.SecurityDesc).HasColumnName("SecurityDesc");
            this.Property(t => t.BBGId).HasColumnName("BBGId");
            this.Property(t => t.Issuer).HasColumnName("Issuer");
            this.Property(t => t.IssuerId).HasColumnName("IssuerId");
            this.Property(t => t.Facility).HasColumnName("Facility");
            this.Property(t => t.CallDate).HasColumnName("CallDate");
            this.Property(t => t.CountryDesc).HasColumnName("CountryDesc");
            this.Property(t => t.MaturityDate).HasColumnName("MaturityDate");
            this.Property(t => t.SnpIndustry).HasColumnName("SnpIndustry");
            this.Property(t => t.MoodyIndustry).HasColumnName("MoodyIndustry");
            this.Property(t => t.IsCovLite).HasColumnName("IsCovLite");
            this.Property(t => t.IsFloating).HasColumnName("IsFloating");
            this.Property(t => t.LienType).HasColumnName("LienType");
            this.Property(t => t.IsOnWatch).HasColumnName("IsOnWatch");
            this.Property(t => t.WatchObjectTypeId).HasColumnName("WatchObjectTypeId");
            this.Property(t => t.WatchObjectId).HasColumnName("WatchObjectId");
            this.Property(t => t.WatchId).HasColumnName("WatchId");
            this.Property(t => t.WatchComments).HasColumnName("WatchComments");
            this.Property(t => t.WatchLastUpdatedOn).HasColumnName("WatchLastUpdatedOn");
            this.Property(t => t.WatchUser).HasColumnName("WatchUser");
            this.Property(t => t.OrigSecurityCode).HasColumnName("OrigSecurityCode");
            this.Property(t => t.OrigSecurityDesc).HasColumnName("OrigSecurityDesc");
            this.Property(t => t.OrigBBGId).HasColumnName("OrigBBGId");
            this.Property(t => t.OrigIssuer).HasColumnName("OrigIssuer");
            this.Property(t => t.OrigFacility).HasColumnName("OrigFacility");
            this.Property(t => t.OrigCallDate).HasColumnName("OrigCallDate");
            this.Property(t => t.OrigMaturityDate).HasColumnName("OrigMaturityDate");
            this.Property(t => t.OrigSnpIndustry).HasColumnName("OrigSnpIndustry");
            this.Property(t => t.OrigMoodyIndustry).HasColumnName("OrigMoodyIndustry");
            this.Property(t => t.OrigIsFloating).HasColumnName("OrigIsFloating");
            this.Property(t => t.OrigLienType).HasColumnName("OrigLienType");
            this.Property(t => t.OrigMoodyFacilityRatingAdjusted).HasColumnName("OrigMoodyFacilityRatingAdjusted");
            this.Property(t => t.OrigMoodyCashFlowRatingAdjusted).HasColumnName("OrigMoodyCashFlowRatingAdjusted");
            this.Property(t => t.PrincipalCash).HasColumnName("PrincipalCash");
            this.Property(t => t.LiabilityPar).HasColumnName("LiabilityPar");
            this.Property(t => t.EquityPar).HasColumnName("EquityPar");
            this.Property(t => t.MoodyIndustryId).HasColumnName("MoodyIndustryId");
            this.Property(t => t.SecurityLastUpdatedOn).HasColumnName("SecurityLastUpdatedOn");
            this.Property(t => t.SecurityLastUpdatedBy).HasColumnName("SecurityLastUpdatedBy");
            this.Property(t => t.SecurityCreatedOn).HasColumnName("SecurityCreatedOn");
            this.Property(t => t.SecurityCreatedBy).HasColumnName("SecurityCreatedBy");
            this.Property(t => t.MarketDateId).HasColumnName("MarketDateId");
            this.Property(t => t.MarketDataId).HasColumnName("MarketDataId");
            this.Property(t => t.OverrideMarketDataId).HasColumnName("OverrideMarketDataId");
            this.Property(t => t.Bid).HasColumnName("Bid");
            this.Property(t => t.Offer).HasColumnName("Offer");
            this.Property(t => t.PrevDayBid).HasColumnName("PrevDayBid");
            this.Property(t => t.PrevDayOffer).HasColumnName("PrevDayOffer");
            this.Property(t => t.CostPrice).HasColumnName("CostPrice");
            this.Property(t => t.CostPriceNum).HasColumnName("CostPriceNum");
            this.Property(t => t.BidNum).HasColumnName("BidNum");
            this.Property(t => t.OfferNum).HasColumnName("OfferNum");
            this.Property(t => t.PctBidDiff).HasColumnName("PctBidDiff");
            this.Property(t => t.PctBidDiffNum).HasColumnName("PctBidDiffNum");
            this.Property(t => t.PctOfferDiff).HasColumnName("PctOfferDiff");
            this.Property(t => t.PctOfferDiffNum).HasColumnName("PctOfferDiffNum");
            this.Property(t => t.PriceMove).HasColumnName("PriceMove");
            this.Property(t => t.PrevDayBidNum).HasColumnName("PrevDayBidNum");
            this.Property(t => t.PrevDayOfferNum).HasColumnName("PrevDayOfferNum");
            this.Property(t => t.Spread).HasColumnName("Spread");
            this.Property(t => t.LiborFloor).HasColumnName("LiborFloor");
            this.Property(t => t.MoodyCashFlowRating).HasColumnName("MoodyCashFlowRating");
            this.Property(t => t.MoodyCashFlowRatingAdjusted).HasColumnName("MoodyCashFlowRatingAdjusted");
            this.Property(t => t.MoodyFacilityRating).HasColumnName("MoodyFacilityRating");
            this.Property(t => t.MoodyRecovery).HasColumnName("MoodyRecovery");
            this.Property(t => t.SnPIssuerRating).HasColumnName("SnPIssuerRating");
            this.Property(t => t.SnPIssuerRatingAdjusted).HasColumnName("SnPIssuerRatingAdjusted");
            this.Property(t => t.SnPFacilityRating).HasColumnName("SnPFacilityRating");
            this.Property(t => t.SnPfacilityRatingAdjusted).HasColumnName("SnPfacilityRatingAdjusted");
            this.Property(t => t.SnPRecoveryRating).HasColumnName("SnPRecoveryRating");
            this.Property(t => t.MoodyOutlook).HasColumnName("MoodyOutlook");
            this.Property(t => t.MoodyWatch).HasColumnName("MoodyWatch");
            this.Property(t => t.SnPWatch).HasColumnName("SnPWatch");
            this.Property(t => t.NextReportingDate).HasColumnName("NextReportingDate");
            this.Property(t => t.FiscalYearEndDate).HasColumnName("FiscalYearEndDate");
            this.Property(t => t.AgentBank).HasColumnName("AgentBank");
            this.Property(t => t.CalculationId).HasColumnName("CalculationId");
            this.Property(t => t.YieldBid).HasColumnName("YieldBid");
            this.Property(t => t.YieldOffer).HasColumnName("YieldOffer");
            this.Property(t => t.YieldMid).HasColumnName("YieldMid");
            this.Property(t => t.CappedYieldBid).HasColumnName("CappedYieldBid");
            this.Property(t => t.CappedYieldOffer).HasColumnName("CappedYieldOffer");
            this.Property(t => t.CappedYieldMid).HasColumnName("CappedYieldMid");
            this.Property(t => t.TargetYieldBid).HasColumnName("TargetYieldBid");
            this.Property(t => t.TargetYieldOffer).HasColumnName("TargetYieldOffer");
            this.Property(t => t.TargetYieldMid).HasColumnName("TargetYieldMid");
            this.Property(t => t.BetterWorseBid).HasColumnName("BetterWorseBid");
            this.Property(t => t.BetterWorseOffer).HasColumnName("BetterWorseOffer");
            this.Property(t => t.BetterWorseMid).HasColumnName("BetterWorseMid");
            this.Property(t => t.TotalCoupon).HasColumnName("TotalCoupon");
            this.Property(t => t.WARF).HasColumnName("WARF");
            this.Property(t => t.WARFRecovery).HasColumnName("WARFRecovery");
            this.Property(t => t.Life).HasColumnName("Life");
            this.Property(t => t.CalculationDateId).HasColumnName("CalculationDateId");
            this.Property(t => t.TotalPar).HasColumnName("TotalPar");
            this.Property(t => t.TotalParNum).HasColumnName("TotalParNum");
            this.Property(t => t.BODTotalPar).HasColumnName("BODTotalPar");
            this.Property(t => t.MoodyFacilityRatingAdjusted).HasColumnName("MoodyFacilityRatingAdjusted");
            this.Property(t => t.AnalystResearchId).HasColumnName("AnalystResearchId");
            this.Property(t => t.CLOAnalyst).HasColumnName("CLOAnalyst");
            this.Property(t => t.HFAnalyst).HasColumnName("HFAnalyst");
            this.Property(t => t.AsOfDate).HasColumnName("AsOfDate");
            this.Property(t => t.CreditScore).HasColumnName("CreditScore");
            this.Property(t => t.LiquidityScore).HasColumnName("LiquidityScore");
            this.Property(t => t.OneLLeverage).HasColumnName("OneLLeverage");
            this.Property(t => t.TotalLeverage).HasColumnName("TotalLeverage");
            this.Property(t => t.EVMultiple).HasColumnName("EVMultiple");
            this.Property(t => t.LTMRevenues).HasColumnName("LTMRevenues");
            this.Property(t => t.LTMEBITDA).HasColumnName("LTMEBITDA");
            this.Property(t => t.FCF).HasColumnName("FCF");
            this.Property(t => t.Comments).HasColumnName("Comments");
            this.Property(t => t.MoodyCashFlowRatingAdjustedRank).HasColumnName("MoodyCashFlowRatingAdjustedRank");
            this.Property(t => t.MoodyFacilityRatingAdjustedRank).HasColumnName("MoodyFacilityRatingAdjustedRank");
            this.Property(t => t.SecurityMaturityDate).HasColumnName("SecurityMaturityDate");
            this.Property(t => t.MaturityDays).HasColumnName("MaturityDays");
            this.Property(t => t.WALifeAdjustment).HasColumnName("WALifeAdjustment");
            this.Property(t => t.IsOnAlert).HasColumnName("IsOnAlert");
            this.Property(t => t.SearchText).HasColumnName("SearchText");
	        Property(t => t.EnterpriseValue).HasColumnName(nameof(vw_Position.EnterpriseValue));
	        Property(t => t.LTMFCF).HasColumnName(nameof(vw_Position.LTMFCF));
	        Property(t => t.SeniorLeverage).HasColumnName(nameof(vw_Position.SeniorLeverage));

		}
	}
}
