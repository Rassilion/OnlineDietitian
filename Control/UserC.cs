﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entity;
namespace Control
{
    public class UserC
    {
        // Logon Statement
        // Control email and password by database
        public static UserE validateUser(string email, string password)
        {
            UserE user = null;
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
                    user = new UserE
                    {
                        UserID = Convert.ToInt32(rd["UserID"]),
                        AddressID = rd["AddressID"] == DBNull.Value ? -1 : Convert.ToInt32(rd["AddressID"]),
                        UserBodyPhoto = rd["BodyPhoto"]==DBNull.Value?"": rd["BodyPhoto"].ToString(),
                        UserBirth = DateTime.Parse(rd["UserBirth"].ToString()),
                        UserPhone = rd["UserPhone"] == DBNull.Value ? "" : rd["UserPhone"].ToString(),
                        UserEmail = rd["UserEmail"].ToString(),
                        UserName = rd["UserName"].ToString(),
                        UserPassword = rd["UserPassword"].ToString(),
                        UserSurname = rd["UserSurname"].ToString()
                    };
                }
            }

            com.Dispose();
            com.Connection.Close();
            return user;
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

        public static void InsertUser(UserE user)
        {

            SqlCommand com = new SqlCommand("InsertUser", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;
            if (user.AddressID == -1)
                com.Parameters.Add(new SqlParameter("@addressID", DBNull.Value));
            else
                com.Parameters.Add(new SqlParameter("@addressID", user.AddressID));
            com.Parameters.Add(new SqlParameter("@name", user.UserName));
            com.Parameters.Add(new SqlParameter("@surname", user.UserSurname));
            com.Parameters.Add(new SqlParameter("@email", user.UserEmail));
            com.Parameters.Add(new SqlParameter("@password", user.UserPassword));
            if (user.UserPhone != null)
                com.Parameters.Add(new SqlParameter("@phone", user.UserPhone));
            else
                com.Parameters.Add(new SqlParameter("@phone", DBNull.Value));

            com.Parameters.Add(new SqlParameter("@birthdate", user.UserBirth));
            if (user.UserPhone != null)
                com.Parameters.Add(new SqlParameter("@bodyPhoto", user.UserBodyPhoto));
            else
                com.Parameters.Add(new SqlParameter("@bodyPhoto", DBNull.Value));


            if (com.Connection.State == ConnectionState.Closed)
            {
                com.Connection.Open();
            }
            SqlDataReader rd = com.ExecuteReader();


            com.Dispose();
            com.Connection.Close();

        }

        public static int CheckUserEmail(string email)
        {
            SqlCommand com = new SqlCommand("CheckUserEmail", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.Add(new SqlParameter("@email", email));

            if (com.Connection.State == ConnectionState.Closed)
            {
                com.Connection.Open();
            }
            SqlDataReader rd = com.ExecuteReader();
            int returnVal = 0;
            if (rd.HasRows)
            {
                rd.Read();
                returnVal = Convert.ToInt32(rd[0]);
            }

            com.Dispose();
            com.Connection.Close();

            return returnVal;
        }


    }
}
