

create table employeeInfo
(
	empNo int,
	empName varchar(20) not null,
	empDesignation varchar(20) not null,
	empSalary int not null,
	empIsPermenant bit,
	empEmail varchar(100) not null,
	empHobbies varchar(300),

	constraint pk_empNo primary key(empNo),
	constraint chk_empName_len check(len(empName) > 3),
	constraint chk_empDesignation_list check(empDesignation in ('Designer','Developer','Manager')),
	constraint chk_empSalary_range check(empSalary between 20000 and 80000),
	constraint unk_empEmail unique(empEmail)
)

alter table employeeInfo
drop constraint chk_empSalary_range

alter table employeeInfo 
add constraint chk_empSalary_range check(empSalary between 25000 and 90000)

--alter column 
alter table employeeInfo
alter column empIsPermenant bit not null

alter table employeeInfo
alter column empName varchar(60)


--for foreign key, is a relation between 2 or more tables
--for this, we have a Parent table (Master table) and child table
--parent table is a table which is a master list

create table deptInfo
(
	deptNo int,
	deptName varchar(20),
	deptLocation varchar(20),
	constraint pk_deptNo primary key(deptNo)
)
insert into deptInfo values(10,'HR','Delhi')
insert into deptInfo values(20,'IT','Bangalore')
insert into deptInfo values(30,'Accounts','Mumbai')
insert into deptInfo values(40,'Sales','Chennai')
insert into deptInfo values(50,'Transport','Goa')
insert into deptInfo values(60,'Support','Pune')

alter table employeeInfo 
add empDept int 
alter table employeeInfo
add constraint fk_empDept foreign key(empDept) references deptInfo
---------------------------------------------------------
--insert 6 records in deptInfo - 4 already done
--insert 15 records in employeeInfo 
alter table employeeInfo drop column empHobbies
select * from employeeInfo

insert into employeeInfo values(1,'Nikhil','Manager',30000,1,'hello1@gmail.com',10)
insert into employeeInfo values(2,'Rahul','Designer',40000,1,'hello1@gmail.com',20)
insert into employeeInfo values(3,'Priya','Developer',50000,1,'hello2@gmail.com',30)
insert into employeeInfo values(4,'Riya','Developer',33000,0,'hello3@gmail.com',20)
insert into employeeInfo values(5,'Jiya','Manager',34000,1,'hello4@gmail.com',10)
insert into employeeInfo values(6,'Aman','Designer',35000,1,'hello5@gmail.com',20)
insert into employeeInfo values(7,'Suman','Developer',36000,0,'hello6@gmail.com',10)
insert into employeeInfo values(8,'Mohan','Developer',37000,0,'hello7@gmail.com',20)
insert into employeeInfo values(9,'Akshay','Developer',42000,1,'hello8@gmail.com',30)
insert into employeeInfo values(10,'Raman','Developer',43000,1,'hello9@gmail.com',20)
insert into employeeInfo values(10,'Mohan','Designer',440000,0,'hello10@gmail.com',30)
insert into employeeInfo values(11,'Sohan','Manager',45000,1,'hello11@gmail.com',10)
insert into employeeInfo values(12,'Rohan','Developer',67000,1,'hello12@gmail.com',10)
insert into employeeInfo values(13,'Kriti','Manager',77000,0,'hello13@gmail.com',20)
insert into employeeInfo values(14,'Sumit','Manager',78000,1,'hello14@gmail.com',30)
insert into employeeInfo values(15,'Priyal','Developer',79000,1,'hello15@gmail.com',30)

insert into employeeInfo (empNo,empName,empDesignation,empSalary,empIsPermenant,empEmail)
			values(16,'John','Manager',67000,1,'john@gmail.com')

insert into employeeInfo (empNo,empName,empDesignation,empSalary,empIsPermenant,empEmail)
			values(17,'Jacob','Developer',68000,0,'jacob@gmail.com')
			
insert into employeeInfo (empNo,empName,empDesignation,empSalary,empIsPermenant,empEmail)
			values(18,'Mary','Designer',45000,1,'mary@gmail.com')


select * from employeeInfo
select * from deptInfo

------------------Joins
--a. Cross Join / Cartisian Product (used by admins, analyst for forcasting)
		--result is no of rows in table A * no of rows in table B
			--6 * 18 
select * from employeeInfo,deptInfo
		--this will create a combination of 1 emp with all the depts

--b. Equi Join / Inner join -- right combination of records
select * from employeeInfo join deptInfo
			on 
			employeeInfo.empdept = deptInfo.deptNo

	select employeeInfo.empNo,
		   employeeInfo.empName,
		   employeeInfo.empDesignation,
		   deptInfo.deptNo,
		   deptInfo.deptName,
		   deptInfo.deptLocation
		from employeeInfo join deptInfo
		on
		employeeInfo.empDept = deptInfo.deptNo

		--join with order by -- sorting
	select employeeInfo.empNo,
		   employeeInfo.empName,
		   employeeInfo.empDesignation,
		   deptInfo.deptNo,
		   deptInfo.deptName,
		   deptInfo.deptLocation
		from employeeInfo join deptInfo
		on
		employeeInfo.empDept = deptInfo.deptNo
		order by deptNo
		
	--join with where clause -- filter data
	
	select employeeInfo.empNo,
		   employeeInfo.empName,
		   employeeInfo.empDesignation,
		   deptInfo.deptNo,
		   deptInfo.deptName,
		   deptInfo.deptLocation
		from employeeInfo join deptInfo
		on
		employeeInfo.empDept = deptInfo.deptNo
		where deptNo = 20
	--join with where clause and order by
select employeeInfo.empNo,
		   employeeInfo.empName,
		   employeeInfo.empDesignation,
		   deptInfo.deptNo,
		   deptInfo.deptName,
		   deptInfo.deptLocation
		from employeeInfo join deptInfo
		on
		employeeInfo.empDept = deptInfo.deptNo
		where deptNo = 20 
		order by employeeInfo.empDesignation

--c. Left Join - get all the records from left table and equal records from right

er by -- sorting
	select employeeInfo.empNo,
		   employeeInfo.empName,
		   employeeInfo.empDesignation,
		   deptInfo.deptNo,
		   deptInfo.deptName,
		   deptInfo.deptLocation
		from employeeInfo left join deptInfo
		on
		employeeInfo.empDept = deptInfo.deptNo
		order by deptNo desc




--D. Right Join - get all the records from right table and equal records from left
select employeeInfo.empNo,
		   employeeInfo.empName,
		   employeeInfo.empDesignation,
		   deptInfo.deptNo,
		   deptInfo.deptName,
		   deptInfo.deptLocation
		from employeeInfo right join deptInfo
		on
		employeeInfo.empDept = deptInfo.deptNo
		order by deptNo desc

--e. Full Join - gets all the equal and non-equal records from both table
select employeeInfo.empNo,
		   employeeInfo.empName,
		   employeeInfo.empDesignation,
		   deptInfo.deptNo,
		   deptInfo.deptName,
		   deptInfo.deptLocation
		from employeeInfo full join deptInfo
		on
		employeeInfo.empDept = deptInfo.deptNo
		order by deptNo desc
--f. null join -- only non equal records 
select employeeInfo.empNo,
		   employeeInfo.empName,
		   employeeInfo.empDesignation,
		   deptInfo.deptNo,
		   deptInfo.deptName,
		   deptInfo.deptLocation
		from employeeInfo full join deptInfo
		on
		employeeInfo.empDept = deptInfo.deptNo
		where employeeInfo.empdept is null



		--Try
		--get the total employees working in dept 10
		--which dept pays the highest salary
		--total salary paid by each dept
		--display email id of every emp in below format
			empName.first2charactersofdesignation@myorg.co.first2charofdeptlocation
		--increase salary of all employees working in dept 20 by 3000
		--display starts for every dept - '*' for dept 10, 2 for 20, 3 for 30












