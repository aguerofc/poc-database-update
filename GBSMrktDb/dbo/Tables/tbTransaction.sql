CREATE TABLE [dbo].[tbTransaction] (
    [DocumentNumber]         INT           NOT NULL,
    [CId]                    INT           NULL,
    [CustomerID]             CHAR (50)     NULL,
    [TranDateTime]           DATETIME      CONSTRAINT [DF_tbTransact_TranDateTim1__10] DEFAULT (getdate()) NULL,
    [TranCode]               CHAR (1)      NULL,
    [TranType]               CHAR (1)      NULL,
    [Amount]                 FLOAT (53)    CONSTRAINT [DF__tbTransac__Amoun__01B34A1F] DEFAULT ((0)) NULL,
    [PaymentBy]              VARCHAR (25)  NULL,
    [Description]            VARCHAR (355) NULL,
    [EnteredBy]              VARCHAR (50)  NULL,
    [GradeNum]               INT           NULL,
    [VerifiedFlag]           CHAR (1)      CONSTRAINT [DF_tbTransact_VerifiedFla1__10] DEFAULT ('N') NULL,
    [HoldPercent]            INT           CONSTRAINT [DF_tbTransaction_HoldPercent] DEFAULT ((0)) NULL,
    [HoldAmount]             FLOAT (53)    CONSTRAINT [DF_tbTransaction_HoldAmount] DEFAULT ((0)) NULL,
    [ReleaseDate]            DATETIME      NULL,
    [CCNumber]               VARCHAR (30)  NULL,
    [CCExpires]              VARCHAR (10)  NULL,
    [CCApproval]             VARCHAR (30)  NULL,
    [EnteredAmount]          FLOAT (53)    NULL,
    [CoverageDocumentNumber] INT           NULL,
    [Reference]              VARCHAR (30)  NULL,
    [DailyFigureDate]        DATETIME      NULL,
    [AgentID]                VARCHAR (50)  NULL,
    [LastUpdateDateTime]     DATETIME      NULL,
    [LastUpdateLoginID]      CHAR (50)     NULL,
    [CurrencyCode]           CHAR (3)      NULL,
    [ValueDate]              DATETIME      NULL,
    [ArchiveFlag]            CHAR (1)      NULL,
    [CasinoAdjustmentFlag]   CHAR (1)      NULL,
    [SystemID]               VARCHAR (20)  NULL,
    [OrigTicketNumber]       INT           NULL,
    [OrigWagerNumber]        INT           NULL,
    [TraceID]                INT           NULL,
    CONSTRAINT [PK_tbTransaction__DocumentNumber] PRIMARY KEY CLUSTERED ([DocumentNumber] ASC) WITH (FILLFACTOR = 80)
);


GO
ALTER TABLE [dbo].[tbTransaction] SET (LOCK_ESCALATION = AUTO);

