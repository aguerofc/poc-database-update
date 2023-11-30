CREATE TABLE [dbo].[tbCasinoPlayArchive] (
    [ID]                  INT           IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [CId]                 INT           NULL,
    [CustomerID]          CHAR (50)     NOT NULL,
    [SessionID]           BIGINT        CONSTRAINT [DF_tbCasinoPlayArchive_SessionID] DEFAULT ((0)) NOT NULL,
    [PostedDateTime]      DATETIME      CONSTRAINT [DF_tbCasinoPlayArchive_PostedDateTime] DEFAULT (getdate()) NOT NULL,
    [DailyFigureDate]     DATETIME      NOT NULL,
    [RiskAmount]          FLOAT (53)    CONSTRAINT [DF_tbCasinoPlayArchive_RiskAmount] DEFAULT ((0)) NOT NULL,
    [WinAmount]           FLOAT (53)    CONSTRAINT [DF_tbCasinoPlayArchive_WinAmount] DEFAULT ((0)) NOT NULL,
    [PlayDescription]     VARCHAR (250) NULL,
    [NewAvailableBalance] FLOAT (53)    NULL,
    [RecId]               BIGINT        NULL,
    [ArchiveFlag]         CHAR (1)      NULL,
    [Reference]           VARCHAR (400) NULL,
    [SystemID]            VARCHAR (20)  NULL,
    [RoundID]             VARCHAR (200) NULL,
    CONSTRAINT [PK_tbCasinoPlayArchive] PRIMARY KEY CLUSTERED ([ID] ASC) WITH (FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = ON)
);

