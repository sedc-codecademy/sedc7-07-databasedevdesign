CREATE FUNCTION dbo.fn_EmployeeFullName (@EmployeeID int)
RETURNS NVARCHAR(201)
AS 
BEGIN
	DECLARE @Result NVARCHAR(201)

	SELECT @Result = e.FirstName + N' ' + e.LastName
	FROM dbo.Employee e
	WHERE Id = @EmployeeID

	RETURN @Result
END
GO

-- how to call
select dbo.fn_EmployeeFullName(1) as FullName