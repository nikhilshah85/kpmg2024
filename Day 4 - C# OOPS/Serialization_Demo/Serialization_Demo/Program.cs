// See https://aka.ms/new-console-template for more information
using Serialization_Demo;
using System.Text.Json;
using System.Xml.Serialization;

Console.WriteLine("Hello, World!");


Employee employee = new Employee()
{
    empNo = 2,
    empName = "Mohit",
    empDesignation = "Accounts",
    empIsPermenant = false,
    empSalary = 16000
};

FileStream myFile = new FileStream(employee.empNo + ".json",FileMode.Create,FileAccess.Write);

#region XML Serialization
//XmlSerializer xs = new XmlSerializer(typeof(Employee));
//xs.Serialize(myFile, employee);
//myFile.Close();
//Console.WriteLine("Employee Object Serialized");
#endregion

JsonSerializer.Serialize(myFile, employee); 
myFile.Close();
Console.WriteLine("Data Saved in JSON File");



