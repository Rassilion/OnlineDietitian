using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    class AppointmentE
    {
        public int AppointmentID { get; set; }
        public int UserID { get; set; }

        public string AppointmentStatus { get; set; }

        public int DietitianID { get; set; }

        public DateTime AppointmentDate { get; set; }


    }
}
