using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using bankingAPP_OOPS;
using bankingAPP_OOPS.test;

    internal class Savings : Accounts
    {
    public override double Withdraw(int amount)
    {

        if(amount > 20000)
        {
            throw new Exception("You can withdraw max 20000");
        }
        return base.Withdraw(amount);
    }


}

