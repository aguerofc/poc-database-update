CREATE TABLE [dbo].[tbTicket] (
    [TicketNumber]    BIGINT           NOT NULL,
    [CId]             INT           NULL,
    [CustomerID]      CHAR (50)     NULL,
    [StartDateTime]   DATETIME      NULL,
    [PostedDateTime]  DATETIME      NULL,
    [AgentID]         VARCHAR (50)  CONSTRAINT [DF_tbTicket_AgentID] DEFAULT ('Absent') NULL,
    [TicketWriter]    VARCHAR (50)  NULL,
    [Comments]        VARCHAR (MAX) NULL,
    [DiscrepancyFlag] CHAR (1)      NULL,
    [Store]           CHAR (20)     NULL,
    [PlayCount]       INT           NULL,
    [ArchiveFlag]     CHAR (1)      NULL,
    [IPAddress]       VARCHAR (255) NULL,
    [LastEditedBy]    VARCHAR (50)  NULL,
    [LastEditedByOn]  DATETIME      NULL,
    [SystemID]        VARCHAR (20)  NULL,
    [CustomerBalance] FLOAT (53)    NULL,
    CONSTRAINT [PK_tbTicket__TicketNumber] PRIMARY KEY CLUSTERED ([TicketNumber] ASC) WITH (FILLFACTOR = 80)
);


GO
ALTER TABLE [dbo].[tbTicket] SET (LOCK_ESCALATION = AUTO);

