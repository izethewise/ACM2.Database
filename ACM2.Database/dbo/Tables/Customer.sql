CREATE TABLE [dbo].[Customer] (
    [CustomerId]   INT           IDENTITY (1, 1) NOT NULL,
    [LastName]     NVARCHAR (20) NULL,
    [FirstName]    NVARCHAR (20) NULL,
    [EmailAddress] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([CustomerId] ASC),
    CONSTRAINT [CK_Customer_Lastaname_Not_Empty] CHECK (len(rtrim([lastname]))>(0))
);


GO
CREATE NONCLUSTERED INDEX [IX_CustomerLastname]
    ON [dbo].[Customer]([LastName] ASC);

