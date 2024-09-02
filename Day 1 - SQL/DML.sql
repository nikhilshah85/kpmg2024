create database employeeDB

use employeeDB

create table employeeDetails
(
	empNo int,
	empName varchar(20),
	empDesignation varchar(20),
	empSalary int,
	empIsPermenant bit
)
insert into employeeDetails values(101,'Kriti','Sales',4000,1)
insert into employeeDetails values(102,'Raj','Accounts',5000,1)
insert into employeeDetails values(103,'Alex','Sales',6000,0)
insert into employeeDetails values(104,'Micheal','Sales',14000,1)
insert into employeeDetails values(105,'John','Developer',44000,0)
insert into employeeDetails values(106,'Henry','Sales',18000,1)
insert into employeeDetails values(107,'Smith','Developer',29000,0)


update employeeDetails set empSalary = empSalary + 1000
update employeeDetails set empName = 'Hello ' + empName

update employeeDetails set empName= 'Hello ' + empName, 
						   empSalary = empSalary + 4000,
						   empdesignation = 'Sr.' + empDesignation

--dont try this
delete from employeeDetails 
--u can try this
delete from employeeDetails where empNo = 104



--DQL 
select * from employeeDetails








