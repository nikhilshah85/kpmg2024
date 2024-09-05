------------------------------------------
--Procedures

--they are used for DML operations
--they will not give access to tables or a view
--functions and procedures are compiled and faster than sql queries

create procedure proc_newDept
					(@deptNo int,
					@deptName varchar(20),
					@deptLocation varchar(20)
					)
	as
	begin
		insert into deptInfo values(@deptNo,@deptName,@deptLocation)
	end

	exec proc_newDept 70,'BPO','NYK'


	exec proc_empInfo 130,'Maahi','Developer',1

	select * from employeeInfo where empno = 130
create procedure proc_empInfo
							(@empNo int,
							 @empName varchar(20),
							 @empDesignation varchar(20),
							 @empisPermenant bit)
	as
	begin
			declare @empSalary int
			declare @empEmail varchar(30)
			declare @empDept int

			if (@empDesignation = 'Designer')
			begin
				set @empSalary = 40000
				select @empEmail = lower(concat(@empName,'.',left(@empDesignation,2),'@kpmg.com'))
				set @empDept = 10
			end
			if (@empDesignation = 'Developer')
			begin
				set @empSalary = 60000
				select @empEmail = lower(concat(@empName,'.',left(@empDesignation,2),'@kpmg.com'))
				set @empDept = 20
			end
			if(@empDesignation = 'Manager')
			begin
				set @empSalary = 70000
				select @empEmail = lower(concat(@empName,'.',left(@empDesignation,2),'@kpmg.com'))
				set @empDept = 10
			end
			insert into employeeInfo values(@empno,@empName,@empDesignation,@empsalary,@empisPermenant,@empEmail,@empDept)
	end



















