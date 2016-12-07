using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class MedicalReportE
    {

        public int ReportID { get; set; }
        public int DietID { get; set; }

        public int UserID { get; set; }
        public DateTime Date { get; set; }
        public string UsedDrugs { get; set; }
        public string Disease { get; set; }
        public string Height { get; set; }
        public string Weight { get; set; }
        public string UrineTest { get; set; }
        public string BloodTest { get; set; }



    }
}
