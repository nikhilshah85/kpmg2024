using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Serialization_Demo
{
    //if you want object of Employee to go out of ram and store somewhere
    //we have to mark it with Attribute [Serializabl]
    [Serializable]
    public class Employee
    {
        public int empNo { get; set; }
        public string empName { get; set; }
        public double empSalary { get; set; }
        public bool empIsPermenant { get; set; }
        public string empDesignation { get; set; }
    }
}
