using Entity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Control
{
    public class LogC
    {


        public static int InsertLog(LogE obj)
        {
            SqlCommand com = new SqlCommand("InsertLog", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;

            com.Parameters.Add(new SqlParameter("@type", obj.type));
            com.Parameters.Add(new SqlParameter("@message", obj.message));

            if (com.Connection.State == ConnectionState.Closed)
            {
                com.Connection.Open();
            }
            SqlDataReader rd = com.ExecuteReader();
            int requestID = 0;
            if (rd.HasRows)
            {
                rd.Read();
                requestID = Convert.ToInt32(rd[0]);


            }
            com.Dispose();
            com.Connection.Close();
            return requestID;
        }

        public static List<LogE> selectLogs()
        {
            List<LogE> list = null;

            SqlCommand com = new SqlCommand("selectLogs", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;

            if (com.Connection.State == ConnectionState.Closed)
            {
                com.Connection.Open();
            }
            SqlDataReader rd = com.ExecuteReader();
            if (rd.HasRows)
            {
                list = new List<LogE>();
                while (rd.Read())
                {
                    list.Add(new LogE
                    {
                        type = rd["type"].ToString(),
                        message =rd["message"].ToString(),
                        date= DateTime.Parse(rd["date"].ToString())
                    });

                }
            }

            com.Dispose();
            com.Connection.Close();
            return list;
        }
    }
}
