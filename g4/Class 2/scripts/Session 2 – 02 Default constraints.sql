USE [SEDC]
GO

DROP TABLE IF EXISTS [dbo].[ProductTest]
GO

CREATE TABLE [dbo].[ProductTest]
(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [nvarchar](max) NULL,
	[Weight] [decimal](18, 2) NULL,
	[Price] [decimal](18, 2) NULL CONSTRAINT DF_ProductTest_Price DEFAULT(0),
	[Cost] [decimal](18, 2) NULL CONSTRAINT DF_ProductTest_Cost DEFAULT(0)
)
GO

insert into dbo.ProductTest (Name) values ('Musli bar')
GO

select * from dbo.ProductTest
GO

alter table ProductTest 
add constraint DF_ProductTest_Weight 
default 100 for [Weight]
GO

insert into dbo.ProductTest (Name) values ('Musli bar 2')
GO

select * from dbo.ProductTest
GO

DROP TABLE IF EXISTS dbo.ProductTest;




