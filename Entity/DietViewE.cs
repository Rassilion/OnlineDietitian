using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class DietViewE
    {
        public int DietitianID { get; set; }
        public int ReportID { get; set; }
        public int DietID { get; set; }
        public int RequestID { get; set; }
        public string DietContent { get; set; }
        public string RequestContent { get; set; }
        public bool Health { get; set; }
        public bool Fitness { get; set; }
        public bool WeightGain { get; set; }
        public bool WeightLoss { get; set; }
        public int UserID { get; set; }
        public string UsedDrugs { get; set; }
        public string Disease { get; set; }
        public string Height { get; set; }
        public string Weight { get; set; }
        public string UrineTest { get; set; }
        public string BloodTest { get; set; }
        public string UserName { get; set; }
        public string UserSurname { get; set; }
        public string UserEmail { get; set; }
        public string UserBodyPhoto { get; set; }
        public DateTime UserBirth { get; set; }
        public string Gender { get; set; }

    }
}
