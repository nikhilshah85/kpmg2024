// See https://aka.ms/new-console-template for more information
//Console.WriteLine("Hello, World!");

#region Write File 
//FileStream myFile = new FileStream("myDetails.txt", FileMode.CreateNew, FileAccess.Write);
//StreamWriter pen = new StreamWriter(myFile);

//try
//{
//    pen.WriteLine("Hello and welcome ");
//    pen.WriteLine("My Name is Nikhil");
//    pen.WriteLine("I am from Mumbai");
//    pen.WriteLine("I am a Trainer");
//    pen.WriteLine("I love programming");
//    pen.WriteLine("I am Certified");
//    pen.WriteLine("Thank you bye");
//}
//catch(Exception es)
//{
//    Console.WriteLine(es.Message);
//}
//finally
//{
//    pen.Close();
//    myFile.Close();
//    Console.WriteLine("Details Written to fine");
//}
#endregion

#region Dynamic Writing to file
//Console.WriteLine("Please Enter Your Name");
//string user = Console.ReadLine();
//FileStream myFile = new FileStream(user + ".txt",FileMode.Create,FileAccess.Write);
//StreamWriter pen = new StreamWriter(myFile);
//try
//{
//    string text = "";
//    Console.WriteLine("Say something about yourself, Type End Once done");
//    while (text != "End")
//    {
//        text = Console.ReadLine();
//        if (text != "End")
//        {
//            pen.WriteLine(text);
//        }

//    }
//}
//catch(Exception es) { Console.WriteLine(es.Message); }
//finally { pen.Close(); 
//          myFile.Close();
//    Console.WriteLine("Thank you");
//}
#endregion


#region Dynamic Read From File

Console.WriteLine("Enter the name of file you want to read");
string filename = Console.ReadLine();
FileStream myFile = new FileStream(filename + ".txt", FileMode.Open, FileAccess.Read);
StreamReader reader = new StreamReader(myFile);

Console.WriteLine(reader.ReadToEnd());

#endregion


