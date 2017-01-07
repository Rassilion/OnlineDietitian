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

        public static int InsertPayment(PaymentE pay)
        {
            
            SqlCommand com = new SqlCommand("InsertPayment", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;

            com.Parameters.Add(new SqlParameter("@dietitianID", pay.DietitianID));
            com.Parameters.Add(new SqlParameter("@userID", pay.UserID));
            if (pay.PayDate == DateTime.MinValue)
                com.Parameters.Add(new SqlParameter("@payDate", DBNull.Value));
            else
                com.Parameters.Add(new SqlParameter("@payDate", pay.PayDate));

            com.Parameters.Add(new SqlParameter("@fee", pay.Fee));
            com.Parameters.Add(new SqlParameter("@bankCart", pay.BankCard));

            if (com.Connection.State == ConnectionState.Closed)
            {
                com.Connection.Open();
            }
            SqlDataReader rd = com.ExecuteReader();
            int insertId = 0;
            if (rd.HasRows)
            {
                rd.Read();
                insertId = Convert.ToInt32(rd[0]);


            }
            com.Dispose();
            com.Connection.Close();
            return insertId;
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
                        PayDate = rd["PayDate"] == DBNull.Value ? DateTime.MinValue : DateTime.Parse(rd["PayDate"].ToString()),
                        BankCard = Convert.ToBoolean(rd["BankCard"]),
                        Fee = rd["Fee"] == DBNull.Value ? "" : rd["Fee"].ToString()
                    };

                }
            }

            com.Dispose();
            com.Connection.Close();
            return temp;
        }
        public static List<PaymentE> getPaymentWithNullByUserID(int id)
        {
            List<PaymentE> list = null;
            SqlCommand com = new SqlCommand("getPaymentWithNullByUserID", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.Add(new SqlParameter("@id", id));

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
                        PayDate = rd["PayDate"] == DBNull.Value ? DateTime.MinValue : DateTime.Parse(rd["PayDate"].ToString()),
                        BankCard = Convert.ToBoolean(rd["BankCard"]),
                        Fee = rd["Fee"] == DBNull.Value ? "" : rd["Fee"].ToString()
                    });

                }
            }

            com.Dispose();
            com.Connection.Close();
            return list;
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
                        PayDate = rd["PayDate"] == DBNull.Value ? DateTime.MinValue : DateTime.Parse(rd["PayDate"].ToString()),
                        BankCard = Convert.ToBoolean(rd["BankCard"]),
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

            SqlCommand com = new SqlCommand("UpdatePayment", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.Add(new SqlParameter("@userID", obj.UserID));
            com.Parameters.Add(new SqlParameter("@bankCard", obj.BankCard));
            com.Parameters.Add(new SqlParameter("@dietitianID", obj.DietitianID));
            com.Parameters.Add(new SqlParameter("@fee", obj.Fee));
            com.Parameters.Add(new SqlParameter("@payDate", obj.PayDate));
            com.Parameters.Add(new SqlParameter("@id", obj.PayID));


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
