using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class DietitianE
    {
        public int DietitianID { get; set; }
        public string Address { get; set; }
        public string DietitianLicense { get; set; }
        public string CV { get; set; }
        public string DietitianPhone { get; set; }
        public string DietitianName { get; set; }
        public string DietitianSurname { get; set; }
        public string DietitianEmail { get; set; }
        public string DietitianPassword { get; set; }
        public string Gender { get; set; }
        public String getNameSurname()
        {
            return DietitianName + " " + DietitianSurname;
        }
    }
}
