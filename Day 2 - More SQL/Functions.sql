create function greet(@name varchar(20)) 
returns varchar(40)
as
begin
	return 'Hello and Welcome ' + @name
end

select dbo.greet('Nikhil') as Message
select empNo,dbo.greet(empName) as Greetings, empDesignation from employeeInfo

-----------------------------------------------------------------------
create function Calculate
						 (
							@num1 int,
							@num2 int,
							@operator char
						 )
returns int
as
begin
	declare @result int
	 if (@operator = '+')
	 begin
		set @result = @num1 + @num2
	 end
	  if (@operator = '-')
	 begin
		set @result = @num1 - @num2
	 end
	  if (@operator = '*')
	 begin
		set @result = @num1 * @num2
	 end
	  if (@operator = '/')
	 begin
		set @result = @num1 / @num2
	 end
	 return @result
end

select dbo.calculate(40,20,'+')














