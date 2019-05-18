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
	[Cost] [decimal](18, 2) NULL CONSTRAINT DF_ProductTest_Price DEFAULT(0)
)
GO

ALTER TABLE [dbo].[ProductTest] WITH CHECK
ADD CONSTRAINT ProductTest_UC_Code UNIQUE (Code)
GO

insert into dbo.ProductTest (Name,Code) values ('Musli bar','msb')
insert into dbo.ProductTest (Name,Code) values ('Musli bar new','msb')
GO

select * from dbo.ProductTest
GO

DROP TABLE IF EXISTS [dbo].[ProductTest]
GO
