using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class DietRequestE
    {
        public int RequestID { get; set; }
        public string RequestContent { get; set; }
        public bool Health { get; set; }
        public bool Fitness { get; set; }
        public bool WeightGain { get; set; }
        public bool WeightLoss { get; set; }



    }
}
