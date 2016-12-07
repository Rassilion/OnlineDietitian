using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class PaymentE
    {
        public int PayID { get; set; }
        public int DietitianID { get; set; }
        public int UserID { get; set; }
        public DateTime PayDate { get; set; }
        public string Fee { get; set; }
        public string BankCard { get; set; }
    }
}
