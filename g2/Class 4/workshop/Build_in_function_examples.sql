--GETDATE()
select getdate()

--NULLIF
SELECT NULLIF(4,4) AS Same, NULLIF(5,7) AS Different
select 8/0
select 8/nullif(0,0)


---isnull
SELECT * from classes
SELECT isnull(teacherid,id) from classes


--CONCAT
SELECT CONCAT ( 'Happy ', 'Birthday ', 11, '/', '25' ) AS Result;  

select  'Happy '+'  '+ 'Birthday ' + cast(11 as nvarchar(10)) + '/'+ '25' 


SELECT  'Happy '+'Birthday ' + 11+ '/'+'25' 
--Conversion failed when converting the varchar value 'Happy Birthday ' to data type int.

--CAST
SELECT  GETDATE() AS [datetime], 
		CAST (GETDATE() AS date) AS [datetime as date], 
		CAST (GETDATE() AS time) AS [datetime as time];  

select CAST('2018-04-20 18:23:31' as datetime)

SELECT  
	CAST(10.6496 AS int) as trunc1, --11,10
	CAST(-10.6496 AS int) as trunc2, --  -10
	CAST(10.6496 AS numeric) as round1, 
	CAST(-10.6496 AS numeric) as round2;

SELECT  
	CAST(10.6496 AS int) as trunc1, --11,10
	CAST(-10.6496 AS int) as trunc2, --  -10
	CAST(10.6496 AS NUMERIC(18,2)) as round1, 
	CAST(-10.6426 AS NUMERIC(18,2)) as round2;


--CONVERT
SELECT GETDATE() AS [datetime],
	CONVERT(DATE,GETDATE()) AS [datetime as date],

	CONVERT(TIME,GETDATE()) AS [datetime as time];



--Some extra system functions
SELECT @@VERSION
SELECT @@SERVERNAME
SELECT @@SERVICENAME
SELECT @@TRANCOUNT