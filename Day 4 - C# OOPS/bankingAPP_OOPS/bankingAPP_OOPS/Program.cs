// See https://aka.ms/new-console-template for more information
using bankingAPP_OOPS;

Console.WriteLine("Hello, World!");

//Accounts acc = new Accounts();
Savings savObj = new Savings();
savObj.AccountNumber = 101;
savObj.AccountLastName = "Shah";
savObj.AccountName = "Akshay";
savObj.AccountBalance = 25000;
savObj.AccountIsActive = true;

Current curObj = new Current();
curObj.AccountNumber = 102;
curObj.AccountLastName = "Kriti";
curObj.AccountName = "Sinha";
curObj.AccountBalance = 16000;
curObj.AccountIsActive = true;

PF pObj = new PF();
pObj.AccountNumber = 103;
pObj.AccountLastName = "Sharma";
pObj.AccountName = "Ankit";
pObj.AccountBalance = 9000;
pObj.AccountIsActive = true;

try
{
    savObj.Withdraw(22000);
    Console.WriteLine("Withdraw successful");
    Console.WriteLine(savObj.AccountBalance);
}
catch(Exception es)
{
    Console.WriteLine(es.Message);
}