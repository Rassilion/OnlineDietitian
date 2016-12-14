using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Control
{
    public class UserC
    {
        // Logon Statement
        // Control email and password by database
        public static int validateUser(string email,string password)
        {
            int userID = -1; 

            SqlCommand com = new SqlCommand("ValidateUser", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.Add(new SqlParameter("@Email", email));
            com.Parameters.Add(new SqlParameter("@Password", password));

            if (com.Connection.State == ConnectionState.Closed)
            {
                com.Connection.Open();
            }
            SqlDataReader rd = com.ExecuteReader();
            if (rd.HasRows)
            {
                if (rd.Read())
                {
                    userID = Convert.ToInt32(rd[0]);
                }
            }

            com.Dispose();
            com.Connection.Close();
            return userID;
        }

        // User name get with userID from database
        public static string GetUserName(int userID)
        {
            SqlCommand com = new SqlCommand("getUserName", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.Add(new SqlParameter("@userID", userID));

            if (com.Connection.State == ConnectionState.Closed)
            {
                com.Connection.Open();
            }
            SqlDataReader rd = com.ExecuteReader();
            string returnVal = "NULL";
            if (rd.HasRows)
            {
                rd.Read();
                returnVal = rd["UserName"].ToString() + " " + rd["UserSurname"].ToString();
            }
            com.Dispose();
            com.Connection.Close();
            return returnVal;
        }

        // Register Statement

        public static void InsertUser(int addresID, string name, string surname, string email, string password, string phone, string bodyPhoto)
        {

            SqlCommand com = new SqlCommand("InsertUser", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.Add(new SqlParameter("@addressID", addresID));
            com.Parameters.Add(new SqlParameter("@name", name));
            com.Parameters.Add(new SqlParameter("@surname", surname));
            com.Parameters.Add(new SqlParameter("@email", email));
            com.Parameters.Add(new SqlParameter("@password", password));
            com.Parameters.Add(new SqlParameter("@phone", phone));
            com.Parameters.Add(new SqlParameter("@bodyPhoto", bodyPhoto));

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
