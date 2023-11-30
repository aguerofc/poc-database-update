CREATE TABLE [dbo].[tbLanguage] (
    [Id]               INT          NOT NULL,
    [Code]             VARCHAR (3)  NOT NULL,
    [WPCode]           VARCHAR (10) NULL,
    [Name]             VARCHAR (30) NULL,
    [Modified]         BIT          NULL,
    [LastModification] DATETIME     NULL,
    [Class]            VARCHAR (10) NULL,
    [Abr]              VARCHAR (10) NULL,
    [Active]           BIT          NULL,
    CONSTRAINT [PK_tbLanguage] PRIMARY KEY CLUSTERED ([Code] ASC) WITH (FILLFACTOR = 80)
);

