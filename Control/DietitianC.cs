using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entity;
using System.Data.SqlClient;
using System.Data;

namespace Control
{
    public class DietitianC
    {
        public static string GetDietitianName(int dietitianID)
        {
            SqlCommand com = new SqlCommand("getDietitianName", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.Add(new SqlParameter("@dietitianID", dietitianID));

            if (com.Connection.State == ConnectionState.Closed)
            {
                com.Connection.Open();
            }
            SqlDataReader rd = com.ExecuteReader();
            string returnVal = "NULL";
            if (rd.HasRows)
            {
                rd.Read();
                returnVal = rd["DietitianName"].ToString() + " " + rd["DietitianSurname"].ToString();
            }
            com.Dispose();
            com.Connection.Close();
            return returnVal;
        }
    }
}
