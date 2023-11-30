CREATE TABLE [dbo].[tbDailyFigure] (
    [DailyFigureDate]        DATETIME     NOT NULL,
    [CustomerID]             CHAR (50)    NOT NULL,
    [AgentID]                VARCHAR (50) NOT NULL,
    [AmountWon]              FLOAT (53)   NULL,
    [AmountLost]             FLOAT (53)   NULL,
    [CreditAdjustmentAmount] FLOAT (53)   NULL,
    [DebitAdjustmentAmount]  FLOAT (53)   NULL,
    [CurrencyCode]           CHAR (3)     NULL,
    [CasinoAmountWon]        FLOAT (53)   CONSTRAINT [DF_tbDailyFigure_CasinoAmountWon] DEFAULT ((0)) NULL,
    [CasinoAmountLost]       FLOAT (53)   CONSTRAINT [DF_tbDailyFigure_CasinoAmountLost] DEFAULT ((0)) NULL,
    [TotalTransCredit]       FLOAT (53)   NULL,
    [TotalTransDebit]        FLOAT (53)   NULL,
    [EndingBalance]          FLOAT (53)   NULL,
    [OtherCredit]            FLOAT (53)   NULL,
    [OtherDebit]             FLOAT (53)   NULL,
    CONSTRAINT [PK_tbDailyFigure] PRIMARY KEY CLUSTERED ([DailyFigureDate] ASC, [CustomerID] ASC, [AgentID] ASC) WITH (FILLFACTOR = 80)
);


GO
ALTER TABLE [dbo].[tbDailyFigure] SET (LOCK_ESCALATION = AUTO);

