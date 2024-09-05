using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OOPS_Demo
{
    public class Employee
    {
        public int empNo { get; set; }
        public string empName { get; set; }
        public string empDesignation { get; set; }
        public double empSalary { get; set; }
        public bool empIsPermenant { get; set; }

        public double GetCTC()
        {
            return empSalary * 12;
        }

        public string GetDetails()
        {
            return empName + " is a " + empDesignation;
        }

    }
}



