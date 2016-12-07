using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Control
{
    class Connection
    {
        public static readonly SqlConnection Con = new SqlConnection("server=(local); database=OnlineDietitian; Trusted_Connection=true; MultipleActiveResultSets=true");
    }
}
