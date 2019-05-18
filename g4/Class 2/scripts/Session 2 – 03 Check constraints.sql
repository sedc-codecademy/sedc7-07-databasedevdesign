DROP TABLE IF EXISTS [dbo].[ProductTest]
GO

CREATE TABLE [dbo].[ProductTest]
(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [nvarchar](max) NULL,
	[Weight] [decimal](18, 2) NULL,
	[Price] [decimal](18, 2) NULL,
	[Cost] [decimal](18, 2) NULL CONSTRAINT DF_ProductTest_Cost DEFAULT(0)
)
GO

ALTER TABLE [dbo].[ProductTest] WITH CHECK
ADD CONSTRAINT CHK_ProductsTest_Price CHECK (Price >= 0);
GO

insert into dbo.ProductTest (Name,Price) values ('Musli bar',-10)
GO
insert into dbo.ProductTest (Name,Price) values ('Musli bar 2',10)
GO

select * from dbo.ProductTest
GO

DROP TABLE IF EXISTS [dbo].[ProductTest]
GO
