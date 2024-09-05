using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace bankingAPP_OOPS
{
    internal abstract class Accounts
    {
        #region Properties
        public int AccountNumber { get; set; }
        public string AccountName { get; set; }
        public double AccountBalance { get; set; }
        public bool AccountIsActive { get; set; }
        public string AccountLastName { get; set; }
        #endregion

        #region Methods
        public virtual double Withdraw(int amount)
        {
            AccountBalance = AccountBalance - amount;
            return AccountBalance;
        }

        public double Deposit(int amount) 
        {
            AccountBalance = AccountBalance + amount;
            return AccountBalance;
        }
        #endregion
    }
}
