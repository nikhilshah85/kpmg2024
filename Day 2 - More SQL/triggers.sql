-----------------------------------------------------------------------------
--Triggers
--triggers are used for Automation
--they are also called as custom constraints
--they are at table level
--there are 3 types of constraints
	--before 
	--after
	--instead of  (special trigger for view)

	--before is before the action (insert,update or delete is completed)
	--eg. before insert,update or delete of employee check time

	--after is after the action is completed



	alter trigger trg_checktime_empInfo
	on employeeInfo
	for insert
	as
	begin
		if (DATEPART(day,getdate()) in (6,7) or DATEPART(hour,GETDATE()) not between 9 and 15 )
		begin
			rollback 
			print 'Sorry you cannot Hire employee during non working hours'
		end
	end
	select DATEPART(hour,GETDATE())


	insert into employeeInfo values(132,'Raakhi','Developer',85000,0,'raakhi2@gmail.com',60)

	select * from employeeInfo

	select DATEPART(day,getdate())



	----------------
	--after trigger

create table stocktable
(
stockid int primary key,
stockname varchar(20),
availableqty int
)
insert into stocktable values(1,'Pepsi',50)
insert into stocktable values(2,'Oreo',50)
insert into stocktable values(3,'Dairy Milk',50)
insert into stocktable values(4,'Red Bull',50)

create table sales
(
	id int primary key identity,
	stockid int,
	saleqty int,
	constraint fk_stockid foreign key(stockid) references stocktable,constraint chk_saleqty check(saleqty > 1))

create table stockreorder (id int primary key identity,stockid int)


create trigger trg_stocksale on sales
after insert
as
begin
	declare @saleqty int = 0;
	declare @stockid int = 0;

	select @saleqty = i.saleqty from inserted i
	select @stockid = i.stockid from inserted i
	update stocktable set availableqty = availableqty - @saleqty where stockid = @stockid
end



select * from stocktable
select * from sales

insert into sales values(3,24)





