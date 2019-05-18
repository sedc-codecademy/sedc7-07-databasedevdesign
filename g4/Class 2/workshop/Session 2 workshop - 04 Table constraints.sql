/*
Change Products table always to insert value 1 in price column if no price is provided on insert
Change Products table to prevent inserting Price that will more than 2x bigger then the cost price
Change Products table to guarantee unique names across the products
*/

ALTER TABLE Product
ADD CONSTRAINT DF_Product_Price DEFAULT 1 FOR [Price]
GO

ALTER TABLE [dbo].[Product] WITH CHECK
ADD CONSTRAINT CHK_Products_Price CHECK (price <= Cost*2);
GO

-- This will fail due to duplicates (remove all duplicates)
ALTER TABLE [dbo].[Product] WITH CHECK
ADD CONSTRAINT UC_Product_Name UNIQUE (Name)
GO

select * from Product where Name = 'Gluten Free'
update p set Name = 'Gluten Free New'
from dbo.Product p
where name = 'Gluten Free'
and id = 12
GO

select * from Product where Name = 'Multigrain'
update p set Name = 'Multigrain New'
from dbo.Product p
where name = 'Multigrain'
and id = 11
GO
