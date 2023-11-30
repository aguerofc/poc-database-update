CREATE TABLE [dbo].[tbWagerGameItemTerms] (
    [TicketNumber] INT       NOT NULL,
    [WagerNumber]  INT       NOT NULL,
    [ItemNumber]   INT       NOT NULL,
    [WagerTerm]    CHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([TicketNumber] ASC, [WagerNumber] ASC, [ItemNumber] ASC, [WagerTerm] ASC) WITH (FILLFACTOR = 90)
);

