﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace YCM.CLO.DataAccess.Models
{
    public partial class TradeBooking
    {
        public TradeBooking()
        {
            this.tradeType = new TradeType();
            this.traders = new Trader();
            this.facility = new Facility();
            this.counterparty = new CounterParty();
            this.settlemethods = new SettleMethods();
            this.interesttreatments = new InterestTreatment();
            this.allocationRule = new AllocationRule();
            this.TradeBookingDetail = new List<TradeBookingDetail>();
        }
        public int Id { get; set; }
        public string TradeId { get; set; }
        public int TradeGroupId { get; set; }
        public DateTime TradeDate { get; set; }
        public int TradeTypeId { get; set; }
        public string TradeTypeDesc { get; set; }
        public int TraderId { get; set; }
        public string LoanXId { get; set; }
        public int IssuerId { get; set; }
        public string IssuerDesc { get; set; }
        public int FacilityId { get; set; }
        public int CounterPartyId { get; set; }
        public int SettleMethodId { get; set; }
        public string SettleMethod { get; set; }
        public int InterestTreatmentId { get; set; }
        public string InterestTreatment { get; set; }
        public decimal Price { get; set; }
        public decimal TotalQty { get; set; }
        public int RuleId { get; set; }
        public string TradeComment { get; set; }
        //public string ResponseStatus { get; set; }
        public TradeType tradeType { get; set; }
        public Trader traders { get; set; }
        public Facility facility { get; set; }
        public CounterParty counterparty { get; set; }
        public SettleMethods settlemethods { get; set; }
        public InterestTreatment interesttreatments { get; set; }
        public AllocationRule allocationRule { get; set; }
        public virtual ICollection<TradeBookingDetail> TradeBookingDetail { get; set; }
    }
}
