using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace bankingAPP_OOPS
{
    internal class Current : Accounts
    {
        public override double Withdraw(int amount)
        {
            if(amount > 100000)
            {
                throw new Exception("You can withdraw max 100000");
            }
            return base.Withdraw(amount);
        }
    }
}
