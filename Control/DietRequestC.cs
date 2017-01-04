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
    public class DietRequestC
    {

        public static void DeleteDietRequest(int id)
        {

            SqlCommand com = new SqlCommand("DeleteDietRequest", Connection.Con); // Prodecure
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

        public static DietRequestE getDietRequestByID(int id)
        {
            DietRequestE temp = null;
            SqlCommand com = new SqlCommand("getDietRequestByID", Connection.Con); // Prodecure
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
                    temp = new DietRequestE
                    {
                        RequestID = Convert.ToInt32(rd["RequestID"]),
                        RequestContent = rd["RequestContent"].ToString(),
                        Health = Convert.ToBoolean(rd["Health"]),
                        Fitness = Convert.ToBoolean(rd["Fitness"]),
                        WeightLoss = Convert.ToBoolean(rd["WeightLoss"]),
                        WeightGain = Convert.ToBoolean(rd["WeightGain"])
                    };

                }
            }

            com.Dispose();
            com.Connection.Close();
            return temp;
        }

        public static List<DietRequestE> selectDietRequests()
        {
            List<DietRequestE> list = null;

            SqlCommand com = new SqlCommand("selectDietRequests", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;

            if (com.Connection.State == ConnectionState.Closed)
            {
                com.Connection.Open();
            }
            SqlDataReader rd = com.ExecuteReader();
            if (rd.HasRows)
            {
                list = new List<DietRequestE>();
                while (rd.Read())
                {
                    list.Add(new DietRequestE
                    {
                        RequestID = Convert.ToInt32(rd["RequestID"]),
                        RequestContent = rd["RequestContent"].ToString(),
                        Health = Convert.ToBoolean(rd["Health"]),
                        Fitness = Convert.ToBoolean(rd["Fitness"]),
                        WeightLoss = Convert.ToBoolean(rd["WeightLoss"]),
                        WeightGain = Convert.ToBoolean(rd["WeightGain"])
                    });

                }
            }

            com.Dispose();
            com.Connection.Close();
            return list;
        }

        public static void UpdateDietRequest(DietRequestE obj)
        {

            SqlCommand com = new SqlCommand("UpdateDietRequest", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.Add(new SqlParameter("@fitness", obj.Fitness));
            com.Parameters.Add(new SqlParameter("@health", obj.Health));
            com.Parameters.Add(new SqlParameter("@requestContent", obj.RequestContent));
            com.Parameters.Add(new SqlParameter("@weightGain", obj.WeightGain));
            com.Parameters.Add(new SqlParameter("@weightLoss", obj.WeightLoss));

            if (com.Connection.State == ConnectionState.Closed)
            {
                com.Connection.Open();
            }
            SqlDataReader rd = com.ExecuteReader();


            com.Dispose();
            com.Connection.Close();

        }

        public static int InsertDietRequest(DietRequestE dietRequest)
        {
            int requestID = 0;
            SqlCommand com = new SqlCommand("InsertDietRequest", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;

            com.Parameters.Add(new SqlParameter("@requestContent", dietRequest.RequestContent));
            com.Parameters.Add(new SqlParameter("@health", dietRequest.Health));
            com.Parameters.Add(new SqlParameter("@fitness", dietRequest.Fitness));
            com.Parameters.Add(new SqlParameter("@weightGain", dietRequest.WeightGain));
            com.Parameters.Add(new SqlParameter("@weightLoss", dietRequest.WeightLoss));
            
            if (com.Connection.State == ConnectionState.Closed)
            {
                com.Connection.Open();
            }
            SqlDataReader rd = com.ExecuteReader();
            if (rd.HasRows)
            {
                rd.Read();
                requestID = Convert.ToInt32(rd[0]);


            }
            com.Dispose();
            com.Connection.Close();
            return requestID;
        }

    }
}
