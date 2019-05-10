USE [master]
GO

CREATE DATABASE SEDC 
GO

USE SEDC
GO

-- CREATE
CREATE TABLE [Customer](
[Id] [int] IDENTITY(1,1) NOT NULL,
[Name] [nvarchar](100) NOT NULL,
[AccountNumber] [nvarchar](50) NULL,
[City] [nvarchar](100) NULL,
[RegionName] [nvarchar](100) NULL,
[CustomerSize] [nvarchar](10) NULL,
[PhoneNumber] [nvarchar](20) NULL,
[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
[Id] ASC
))
GO

-- INSERT
INSERT INTO [Customer] ([Name],[AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [isActive])
VALUES  ('Vero Skopje', '142253', 'Skopje', 'Skopski', 'big', '023144256', 1)

-- SELECT
SELECT * FROM Customer

SELECT ID, Name, RegionName
FROM Customer

SELECT ID, Name, RegionName
FROM Customer
WHERE RegionName = 'Skopski'

-- UPDATE
UPDATE Customer 
SET Name = 'Vero Bitola', RegionName = 'Bitolski'
WHERE Name = 'Vero Skopje'

-- DELETE
DELETE 
FROM Customer
WHERE Name = 'Vero Skopje'

-- DROP
DROP TABLE Customer





