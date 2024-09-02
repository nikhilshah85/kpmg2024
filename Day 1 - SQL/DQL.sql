create database bankingDB
use bankingDB
create table accoutsInfo
(	
	accNo int,
	accName varchar(20),
	accType varchar(20),
	accBalance int,
	accIsActive bit
	)

insert into accoutsInfo values(101,'Alan','Savings',5000,1)
insert into accoutsInfo values(102,'Aman','Savings',5000,1)
insert into accoutsInfo values(103,'Milan','Savings',5000,0)
insert into accoutsInfo values(104,'Suman','PF',5000,1)
insert into accoutsInfo values(105,'Rohan','Savings',5000,0)
insert into accoutsInfo values(106,'Karan','PF',5000,1)
insert into accoutsInfo values(107,'Priya','Current',5000,1)
insert into accoutsInfo values(108,'Riya','Savings',5000,1)
insert into accoutsInfo values(109,'Jiya','Savings',5000,0)
insert into accoutsInfo values(110,'Diya','PF',5000,0)
insert into accoutsInfo values(111,'Preeti','Savings',5000,1)
insert into accoutsInfo values(112,'Raj','Current',5000,1)
insert into accoutsInfo values(113,'Alok','Savings',5000,1)
insert into accoutsInfo values(114,'Julias','Savings',5000,1)
insert into accoutsInfo values(115,'Preetam','PF',5000,1)
insert into accoutsInfo values(116,'Mohan','Current',5000,1)





--DQL 
--1. select all data
select * from accoutsInfo

--2. select limited columns only
select accNo, accName from accoutsInfo

--3. select with column alias(different names for columns)
select accNo as [Account Number],
		accName as Name,
		accType as [Type],
		accBalance as [Available Balance]
	from accoutsInfo

--4. select with concatination
select CONCAT(accName,' Has a ',accType,' Account with bank')
		as Info 
		from accoutsInfo

--5. select with where clause (fiter data)
	select * from accoutsInfo where accNo = 101
	select * from accoutsInfo where accName = 'Alan'
	select * from accoutsInfo where accType = 'Current'
	select * from accoutsInfo where accName like 'N%'
select * from accoutsInfo where	accType = 'Savings' and accBalance > 56000
--6. select with sorting the data(asc or desc)
	select * from accoutsInfo order by accType
	select * from accoutsInfo order by accBalance desc
	select * from accoutsInfo where accType = 'Current' order by accBalance
--7. select with functions
	--a. aggregate function
	select sum(accbalance) from accoutsInfo 
	select count(accNo) from accoutsInfo
	select avg(accBalance) from accoutsInfo where accType = 'Savings'
	select min(accBalance) from accoutsInfo
	select max(accBalance) from accoutsInfo
	
	--b. string functions
	select accNo, upper(accName) from accoutsInfo
	select accNo, UPPER(accName), LOWER(accname) from accoutsInfo
	select accno, accName, len(accname) from accoutsInfo
	select accNo, accName, left(accName,3) as [Nick Name] from accoutsInfo

	--c. get the date
	select GETDATE() -- this will get the date, time of the machine where server is running
	select DATEPART(month,getdate())
	select DATEPART(day,getdate())
	select DATEPART(DAYOFYEAR,getdate())
	select DATEPART(ISO_WEEK,getdate())

--many more functions we will see as the time goes



































