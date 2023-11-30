CREATE TABLE [dbo].[tbCasinoPlayToday] (
    [ID]                  INT           NOT NULL,
    [CId]                 INT           NULL,
    [CustomerID]          CHAR (50)     NOT NULL,
    [SessionID]           BIGINT        CONSTRAINT [DF_tbCasinoPlayToday_SessionID] DEFAULT ((0)) NOT NULL,
    [PostedDateTime]      DATETIME      CONSTRAINT [DF_tbCasinoPlayToday_PostedDateTime] DEFAULT (getdate()) NOT NULL,
    [DailyFigureDate]     DATETIME      NOT NULL,
    [RiskAmount]          FLOAT (53)    CONSTRAINT [DF_tbCasinoPlayToday_RiskAmount] DEFAULT ((0)) NOT NULL,
    [WinAmount]           FLOAT (53)    CONSTRAINT [DF_tbCasinoPlayToday_WinAmount] DEFAULT ((0)) NOT NULL,
    [PlayDescription]     VARCHAR (250) NULL,
    [NewAvailableBalance] FLOAT (53)    NULL,
    [RecId]               VARCHAR (50)  NOT NULL,
    [ArchiveFlag]         CHAR (1)      NULL,
    [Reference]           VARCHAR (400) NULL,
    [SystemID]            VARCHAR (20)  NULL,
    [RoundID]             VARCHAR (200) NULL,
    CONSTRAINT [PK_tbCasinoPlayToday] PRIMARY KEY CLUSTERED ([ID] ASC) WITH (FILLFACTOR = 80)
);

