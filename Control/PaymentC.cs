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
    public class PaymentC
    {
        public static void DeletePayment(int id)
        {

            SqlCommand com = new SqlCommand("DeletePayment", Connection.Con); // Prodecure
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

        public static PaymentE getPaymentByID(int id)
        {
            PaymentE temp = null;
            SqlCommand com = new SqlCommand("getPaymentByID", Connection.Con); // Prodecure
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
                    temp = new PaymentE
                    {
                        UserID = Convert.ToInt32(rd["UserID"]),
                        PayID = Convert.ToInt32(rd["PayID"]),
                        DietitianID = Convert.ToInt32(rd["DietitianID"]),
                        PayDate = DateTime.Parse(rd["PayDate"].ToString()),
                        BankCard = rd["BankCard"] == DBNull.Value ? "" : rd["BankCard"].ToString(),
                        Fee = rd["Fee"] == DBNull.Value ? "" : rd["Fee"].ToString()
                    };

                }
            }

            com.Dispose();
            com.Connection.Close();
            return temp;
        }

        public static List<PaymentE> selectPayments()
        {
            List<PaymentE> list = null;

            SqlCommand com = new SqlCommand("selectPayments", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;

            if (com.Connection.State == ConnectionState.Closed)
            {
                com.Connection.Open();
            }
            SqlDataReader rd = com.ExecuteReader();
            if (rd.HasRows)
            {
                list = new List<PaymentE>();
                while (rd.Read())
                {
                    list.Add(new PaymentE
                    {
                        UserID = Convert.ToInt32(rd["UserID"]),
                        PayID = Convert.ToInt32(rd["PayID"]),
                        DietitianID = Convert.ToInt32(rd["DietitianID"]),
                        PayDate = DateTime.Parse(rd["PayDate"].ToString()),
                        BankCard = rd["BankCard"] == DBNull.Value ? "" : rd["BankCard"].ToString(),
                        Fee = rd["Fee"] == DBNull.Value ? "" : rd["Fee"].ToString()
                    });

                }
            }

            com.Dispose();
            com.Connection.Close();
            return list;
        }

        public static void UpdatePayment(PaymentE obj)
        {

            SqlCommand com = new SqlCommand("UpdateUser", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.Add(new SqlParameter("@userID", obj.UserID));
            com.Parameters.Add(new SqlParameter("@bankCard", obj.BankCard));
            com.Parameters.Add(new SqlParameter("@dietitianID", obj.DietitianID));
            com.Parameters.Add(new SqlParameter("@fee", obj.Fee));
            com.Parameters.Add(new SqlParameter("@payDate", obj.PayDate));    

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
