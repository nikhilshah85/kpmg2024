// See https://aka.ms/new-console-template for more information
using OOPS_Demo;

Console.WriteLine("Hello, World!");

#region Employee Object
//Employee empObj  =new Employee(); //create a new object and assign the properties
//empObj.empNo = 1;
//empObj.empName = "Karthik";
//empObj.empDesignation = "Sales";
//empObj.empSalary = 40000;
//empObj.empIsPermenant = true;

//Console.WriteLine(empObj.GetDetails());
#endregion


List<Employee> empList = new List<Employee>()
{ 
    new Employee(){ empNo=101, empName="Tarun", empDesignation="Sales", empIsPermenant=true, empSalary=5000},
    new Employee(){ empNo=102, empName="Sakshi", empDesignation="Accounts", empIsPermenant=true, empSalary=15000},
    new Employee(){ empNo=103, empName="Malti", empDesignation="Sales", empIsPermenant=false, empSalary=12000},
    new Employee(){ empNo=104, empName="Shalini", empDesignation="Accounts", empIsPermenant=true, empSalary=9000},
    new Employee(){ empNo=105, empName="Amit", empDesignation="Sales", empIsPermenant=true, empSalary=13000},
    new Employee(){ empNo=106, empName="Akshay", empDesignation="Sales", empIsPermenant=false, empSalary=11000},
};

foreach (var item in empList)
{
    Console.WriteLine("Employee number : " + item.empNo);
    Console.WriteLine("Employee Name : " + item.empName);
    Console.WriteLine("Employee Designation : " + item.empDesignation);
    Console.WriteLine("Employee Salary : " + item.empSalary);
    Console.WriteLine("Employee Is Permenant : " + item.empIsPermenant);
    Console.WriteLine("-------------------------------------------------------");
}

