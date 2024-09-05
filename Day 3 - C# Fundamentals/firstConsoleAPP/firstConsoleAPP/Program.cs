// See https://aka.ms/new-console-template for more information
//Console.WriteLine("Hello, World!");

//Console.WriteLine("Please enter your name");
//string guestName = Console.ReadLine();

//Console.WriteLine("Welcome to programming " + guestName);

#region Calculations
//Console.WriteLine("Enter First Number");
//int num1 = Convert.ToInt32(Console.ReadLine());
//Console.WriteLine("Enter Second Number");
//int num2 = Convert.ToInt32(Console.ReadLine());

//int addition = num1 + num2;
//int subtraction  = num1 - num2;
//int division = num1 / num2;
//int multipliction = num1 * num2;

//Console.WriteLine("Addition : " + addition);
//Console.WriteLine("Subtraction : " + subtraction);
//Console.WriteLine("Division : " + division);
//Console.WriteLine("Multiplication : " + multipliction);
#endregion
//Data types in C#
//int, string, double, float, bool, custom datatype with class
#region If Condition
//Console.WriteLine("Enter A Number");
//int num = Convert.ToInt32(Console.ReadLine());
//if (num <= 0)
//{
//    Console.WriteLine("This is not an acceptable Number");
//}
//else if (num > 0 && num < 10)
//{
//    Console.WriteLine("Poor Number");
//}
//else if (num > 10 &&  num < 20)
//{
//    Console.WriteLine("Accepted Number");
//}
//else if(num > 20 &&  num < 30)
//{
//    Console.WriteLine("Good Number");
//}
//else if(num > 30 && num < 40)
//{
//    Console.WriteLine("Very good number");
//}
//else if (num > 40)
//{
//    Console.WriteLine("Excellent Number");
//}
#endregion

#region For Loop

//Console.WriteLine("Enter a table to print");
//int table = Convert.ToInt32(Console.ReadLine());

//for (int i = 1; i <= 10; i++)
//{
//    Console.WriteLine(table + " * " + i + " = " + (table * i));
//}

#endregion

//Collections are to group similar data in 1 variable
//there are different types of collections

//Array     | used when you know how much data you want to store and you know the datatype eg. Name of 5 friends
//ArrayList | bad with performance, but can take any number of data and any data type
//List      | most used, standars, store any number of data but with known datatype
//Dictionary| This is a key and value pair, unique key and a called

#region Array
//string[] friends = new string[5];
//friends[0] = "Rahul";
//friends[1] = "Karan";
//friends[2] = "Kriti";
//friends[3] = "Mohan";
//friends[4] = "Aditi";

//for (int i = 0; i < friends.Length; i++)
//{
//    Console.WriteLine(friends[i]);
//}
#endregion

#region ArrayList

//using System.Collections; //you should move it to lines on top

//ArrayList myList = new ArrayList();
//myList.Add(10);
//myList.Add("Nikhil");
//myList.Add(true);
//myList.Add(50.60);
//myList.Add(989878767676);
//myList.Add(20);
//myList.Add("Dipti");
//myList.Add(true);
//myList.Add(50.90);
//myList.Add(89647862);

//foreach (var item in myList)
//{
//    Console.WriteLine(item);
//}




#endregion

#region List

List<string> guestList = new List<string>();
guestList.Add("Guest 1");
guestList.Add("Guest 2");
guestList.Add("Guest 3");
guestList.Add("Guest 4");
guestList.Add("Guest 5");
guestList.Add("Guest 6");
guestList.Add("Guest 7");
guestList.Add("Guest 8");
guestList.Add("Guest 9");
guestList.Add("Guest 10");
guestList.Add("Guest 11");

foreach (var guest in guestList)
{
    Console.WriteLine(guest);
}


#endregion

#region Dictionary - key and a value pair, key is unique
Dictionary<int, string> particapantList = new Dictionary<int, string>();

particapantList.Add(101, "Kunal");
particapantList.Add(102, "Kiran");
particapantList.Add(103, "Mohan");
particapantList.Add(104, "Rohan");
particapantList.Add(105, "Sohan");
particapantList.Add(106, "Kriti");
particapantList.Add(107, "Shalini");

foreach (var part in particapantList)
{
    Console.WriteLine(part.Key + " : " + part.Value);
}
#endregion

















