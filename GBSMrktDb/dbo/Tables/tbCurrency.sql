CREATE TABLE [dbo].[tbCurrency] (
    [CurrencyCode] CHAR (3)  NOT NULL,
    [CurrencyName] CHAR (30) NOT NULL,
    CONSTRAINT [PK_tbCurrency__CurrencyCode] PRIMARY KEY NONCLUSTERED ([CurrencyCode] ASC) WITH (FILLFACTOR = 90)
);

