﻿CREATE TABLE [CLO].[MarketData]
(
	[MarketDataId]	BIGINT NOT NULL IDENTITY(1,1),
	[DateId] int not null ,
	[SecurityId]	int NOT NULL references		[CLO].[Security]([SecurityId]),
	[FundId] int not null references CLO.Fund(FundId),
	[Bid] numeric(38,10) null,
	[Offer] numeric(38,10) null,
	[CostPrice] NUMERIC(38,10) null,
	[Spread] numeric(38,10) null,
	[LiborFloor] numeric(38,10) null,
	[MoodyCashFlowRatingId] SMALLINT NOT NULL references [CLO].[Rating]([RatingId]),
	[MoodyCashFlowRatingAdjustedId] SMALLINT NOT NULL references [CLO].[Rating]([RatingId]),
	[MoodyFacilityRatingId] smallint references [CLO].[Rating]([RatingId]),
	[MoodyRecovery]					numeric(18,4) not null,
	[SnPIssuerRatingId]	smallint references [CLO].[Rating]([RatingId]),
	[SnPIssuerRatingAdjustedId] smallint references [CLO].[Rating]([RatingId]),
	[SnPFacilityRatingId] smallint references [CLO].[Rating]([RatingId]),
	[SnPfacilityRatingAdjustedId] smallint references [CLO].[Rating]([RatingId]),
	[SnPRecoveryRatingId] smallint references [CLO].[Rating]([RatingId]),
	[MoodyOutlook] varchar(1) not null default('0'),
	[MoodyWatch] varchar(1) not null default('0'),
	[SnPWatch] varchar(1) not null default('0'),
	[NextReportingDate] datetime null,
	[FiscalYearEndDate] datetime null,
	[AgentBank] varchar(100) null, 
	[CreatedOn] datetime default (getdate()),
	[CreatedBy] varchar(100) null,
	[LastUpdatedOn] datetime default (getdate()),
	[LastUpdatedBy] varchar(100) null,
	[IsStale] bit,
	[SnpCreditWatch] VARCHAR(5),
	[LiborBaseRate] numeric(38,10) null,
	[MoodyDPRatingId] smallint references [CLO].[Rating]([RatingId]),
    PRIMARY KEY ( [DateId],[FundId],[SecurityId])
)
