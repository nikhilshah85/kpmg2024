--Views
--This is most used object - you store the data in a table and forget it
--you should not give access to tables to any1 
-- you use it, to hide the name of table, 
					     --name of columns, operators,
						 --calculations, validations, joins logic
--views are virtual - they hold nothing besides query info
--you can have multiple views for a table
--different users are given different view bases on their access
--all you have to learn is below 2 lines
--you can select * from a view
--you can select wanted columns from the view
--you can delete,update data from a view, when it is based on a single table, not join
--you cannot insert, update or delete from view when it is based on join
--developers create triggers for allowing DML operations on views
	--special trigger for view - is called instead of trigger




create view empView
as
select empNo as [Number],
	   empName as [First Name],
	   empDesignation as [Works As],
	   empSalary * 12 as [CTC],
	   deptName as [Department],
	   deptLocation as [Work City]
	from employeeInfo e join deptInfo d
		on e.empDept = d.deptNo 



		select * from empView



		create view SalaryDetails
		as
		select e.empNo as Number, 
			   e.empName as Name,
			   e.empSalary as [Monthly Pay], 
			   e.empSalary * 0.1 as Bonus,
			   e.empSalary * 0.2 as [Performance Bonus],
			   case  
						when e.empSalary between 0 and 30000 then 'Low Pay'
						when e.empSalary between 30000 and 40000 then 'Low Pay'
						when e.empSalary between 40000 and 50000 then 'Moderate'
						when e.empSalary between 50000 and 60000 then 'Good'
						when e.empSalary between 60000 and 90000 then 'Excellent'
						end as Grade
				from employeeInfo e
				
									 






	   




