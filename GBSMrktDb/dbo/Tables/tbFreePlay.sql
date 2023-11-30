CREATE TABLE [dbo].[tbFreePlay] (
    [DocumentNumber]     INT           NOT NULL,
    [CId]                INT           NULL,
    [CustomerID]         CHAR (50)     NOT NULL,
    [TranDateTime]       DATETIME      NOT NULL,
    [TranCode]           CHAR (1)      NOT NULL,
    [TranType]           CHAR (1)      NOT NULL,
    [Amount]             FLOAT (53)    NOT NULL,
    [Description]        VARCHAR (255) NULL,
    [EnteredBy]          VARCHAR (50)  NULL,
    [AgentID]            VARCHAR (50)  NULL,
    [LastUpdateDateTime] DATETIME      NULL,
    [LastUpdateLoginID]  CHAR (50)     NULL,
    [CurrencyCode]       CHAR (3)      NULL,
    [ValueDate]          DATETIME      NULL,
    [GradeNum]           INT           NULL,
    [ReferenceId]        INT           NULL
);

