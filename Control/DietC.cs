using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Entity;

namespace Control
{
    public class DietC
    {
        public static void DeleteDiet(int id)
        {

            SqlCommand com = new SqlCommand("DeleteDiet", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.Add(new SqlParameter("@id", id));

            if (com.Connection.State == ConnectionState.Closed)
            {
                com.Connection.Open();
            }
            SqlDataReader rd = com.ExecuteReader();


            com.Dispose();
            com.Connection.Close();

        }
        public static void InsertDiet(DietE diet)
        {

            SqlCommand com = new SqlCommand("InsertDiet", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;
           
            com.Parameters.Add(new SqlParameter("@dietitianID", diet.DietitianID));
            com.Parameters.Add(new SqlParameter("@userID", diet.UserID));
            if (diet.DietRequestID != 0)
                com.Parameters.Add(new SqlParameter("@dietRequestID", diet.DietRequestID));
            else
                com.Parameters.Add(new SqlParameter("@dietRequestID", DBNull.Value));

            if (diet.DietContent != null)
                com.Parameters.Add(new SqlParameter("@dietRequestID", diet.DietContent));
            else
                com.Parameters.Add(new SqlParameter("@dietRequestID", DBNull.Value));



            if (com.Connection.State == ConnectionState.Closed)
            {
                com.Connection.Open();
            }
            SqlDataReader rd = com.ExecuteReader();


            com.Dispose();
            com.Connection.Close();

        }
    }
}
