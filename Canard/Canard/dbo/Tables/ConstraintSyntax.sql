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
    [ShippedBy]      NVARCHAR (64) NULL
	,
    CONSTRAINT [CK_Order_ShippedBy] CHECK (
	[ShippedBy]IN (
'Speedy  Express'
,'Speedy  Package'
,'Speedy  Shipping'
,'United  Express'
,'United  Package'
,'United  Shipping'
,'Federal  Express'
,'Federal  Package'
,'Federal  Shipping'
	))
);

