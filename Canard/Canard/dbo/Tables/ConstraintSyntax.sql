CREATE TABLE [dbo].[ConstraintSyntax] (
    [OrderID]        INT           NOT NULL,
    [CustomerID]     NCHAR (5)     NULL,
    [EmployeeID]     INT           NULL,
    [OrderDate]      DATETIME      NULL,
    [RequiredDate]   DATETIME      NULL,
    [ShippedDate]    DATETIME      NULL,
    [Freight]        MONEY         NULL,
    [ShipName]       NVARCHAR (40) NULL,
    [ShipAddress]    NVARCHAR (60) NULL,
    [ShipCity]       NVARCHAR (15) NULL,
    [ShipRegion]     NVARCHAR (15) NULL,
    [ShipPostalCode] NVARCHAR (10) NULL,
    [ShipCountry]    NVARCHAR (15) NULL,
    [ShippedBy]      NVARCHAR (64) NULL,
    CONSTRAINT [CK_Order_ShippedBy] CHECK ([ShippedBy]='Federal  Shipping' OR [ShippedBy]='Federal  Package' OR [ShippedBy]='Federal  Express' OR [ShippedBy]='United  Shipping' OR [ShippedBy]='United  Package' OR [ShippedBy]='United  Express' OR [ShippedBy]='Speedy  Shipping' OR [ShippedBy]='Speedy  Package' OR [ShippedBy]='Speedy  Express')
);



