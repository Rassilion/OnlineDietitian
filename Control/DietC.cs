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

        public static DietE getDietByID(int id)
        {
            DietE temp = null;
            SqlCommand com = new SqlCommand("getDietByID", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.Add(new SqlParameter("@id", id));

            if (com.Connection.State == ConnectionState.Closed)
            {
                com.Connection.Open();
            }
            SqlDataReader rd = com.ExecuteReader();
            if (rd.HasRows)
            {
                if (rd.Read())
                {
                    temp = new DietE
                    {
                        //TODO: DATES
                        DietID = Convert.ToInt32(rd["RequestID"]),
                        DietContent = rd["DietContent"].ToString(),
                        DietitianID = Convert.ToInt32(rd["DietitianID"]),
                        DietRequestID = Convert.ToInt32(rd["DietRequestID"]),
                        UserID = Convert.ToInt32(rd["UserID"]),
                    };

                }
            }

            com.Dispose();
            com.Connection.Close();
            return temp;
        }


        public static List<DietE> selectDiets()
        {
            List<DietE> list = null;

            SqlCommand com = new SqlCommand("selectDiets", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;

            if (com.Connection.State == ConnectionState.Closed)
            {
                com.Connection.Open();
            }
            SqlDataReader rd = com.ExecuteReader();
            if (rd.HasRows)
            {
                list = new List<DietE>();
                while (rd.Read())
                {
                    list.Add(new DietE
                    {
                        DietID = Convert.ToInt32(rd["RequestID"]),
                        DietContent = rd["DietContent"].ToString(),
                        DietitianID = Convert.ToInt32(rd["DietitianID"]),
                        DietRequestID = Convert.ToInt32(rd["DietRequestID"]),
                        UserID = Convert.ToInt32(rd["UserID"]),
                    });

                }
            }

            com.Dispose();
            com.Connection.Close();
            return list;
        }

        public static void UpdateDiet(DietE obj)
        {

            SqlCommand com = new SqlCommand("UpdateDiet", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.Add(new SqlParameter("@dietContent", obj.DietContent));
            com.Parameters.Add(new SqlParameter("@dietitianID", obj.DietitianID));
            com.Parameters.Add(new SqlParameter("@dietRequestID", obj.DietRequestID));
            com.Parameters.Add(new SqlParameter("@userID", obj.UserID));

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
