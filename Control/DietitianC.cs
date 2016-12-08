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

        public static DietitianE GetDietitianByDietitianID(int dietitianID)
        {
            DietitianE dietitian = null;
            SqlCommand com = new SqlCommand("getDietitianByDietitianID", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.Add(new SqlParameter("@dietitianID", dietitianID));

            if (com.Connection.State == ConnectionState.Closed)
            {
                com.Connection.Open();
            }
            SqlDataReader rd = com.ExecuteReader();
            
            if (rd.HasRows)
            {
                if (rd.Read())
                {
                    dietitian = new DietitianE
                    {
                        DietitianID = Convert.ToInt32(rd["DietitianID"]),
                        AddressID = Convert.ToInt32(rd["AddressID"]),
                        DietID = Convert.ToInt32(rd["DietID"]),
                        DietitianLicense = rd["DietitianLicense"].ToString(),
                        CV = rd["CV"].ToString(),
                        DietitianPhone = rd["DietitianPhone"].ToString(),
                        DietitianEmail = rd["DietitianEmail"].ToString(),
                        DietitianName = rd["DietitianName"].ToString(),
                        DietitianPassword = rd["DietitianPassword"].ToString(),
                        DietitianSurname = rd["DietitianSurname"].ToString()
                       
                    };

                }
            }
            com.Dispose();
            com.Connection.Close();
            return dietitian;
        }
    }
}
