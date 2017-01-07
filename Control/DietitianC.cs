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

        public static DietitianE ValidateDietitian(string email, string password)
        {
            DietitianE dietitian = null;
            SqlCommand com = new SqlCommand("ValidateDietitian", Connection.Con); // Prodecure
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
                    dietitian = new DietitianE
                    {
                        DietitianID = Convert.ToInt32(rd["DietitianID"]),
                        Address = rd["Address"] == DBNull.Value ? "" : rd["Address"].ToString(),
                        CV = rd["CV"] == DBNull.Value ? "" : rd["CV"].ToString(),
                        DietitianPhone = rd["DietitianPhone"] == DBNull.Value ? "" : rd["DietitianPhone"].ToString(),
                        DietitianEmail = rd["DietitianEmail"].ToString(),
                        DietitianLicense = rd["DietitianLicense"].ToString(),
                        DietitianName = rd["DietitianName"].ToString(),
                        DietitianPassword = rd["DietitianPassword"].ToString(),
                        DietitianSurname = rd["DietitianSurname"].ToString(),
                        Gender = rd["Gender"] == DBNull.Value ? "" : rd["Gender"].ToString()
                    };
                }
            }

            com.Dispose();
            com.Connection.Close();
            return dietitian;
        }

        public static int InsertDietitian(DietitianE dietitian)
        {

            SqlCommand com = new SqlCommand("InsertDietitian", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;
            if (dietitian.Address == null)
                com.Parameters.Add(new SqlParameter("@address", DBNull.Value));
            else
                com.Parameters.Add(new SqlParameter("@address", dietitian.Address));
            com.Parameters.Add(new SqlParameter("@name", dietitian.DietitianName));
            com.Parameters.Add(new SqlParameter("@surname", dietitian.DietitianSurname));
            com.Parameters.Add(new SqlParameter("@email", dietitian.DietitianEmail));
            com.Parameters.Add(new SqlParameter("@password", dietitian.DietitianPassword));
            if (dietitian.DietitianPhone != null)
                com.Parameters.Add(new SqlParameter("@phone", dietitian.DietitianPhone));
            else
                com.Parameters.Add(new SqlParameter("@phone", DBNull.Value));

            com.Parameters.Add(new SqlParameter("@cv", dietitian.CV));
            com.Parameters.Add(new SqlParameter("@license", dietitian.DietitianLicense));
            com.Parameters.Add(new SqlParameter("@gender", dietitian.Gender));


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

        public static List<DietitianE> GetDietitians()
        {
            List<DietitianE> list = null;

            SqlCommand com = new SqlCommand("SelectDietitians", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;

            if (com.Connection.State == ConnectionState.Closed)
            {
                com.Connection.Open();
            }
            SqlDataReader rd = com.ExecuteReader();
            if (rd.HasRows)
            {
                list = new List<DietitianE>();
                while (rd.Read())
                {
                    list.Add(new DietitianE
                    {
                        DietitianID = Convert.ToInt32(rd["dietitianID"]),
                        Address = rd["address"].ToString(),
                        DietitianLicense = rd["dietitianLicense"].ToString(),
                        CV = rd["CV"].ToString(),
                        DietitianPhone = rd["dietitianPhone"].ToString(),
                        DietitianName = rd["dietitianName"].ToString(),
                        DietitianSurname = rd["dietitianSurname"].ToString(),
                        DietitianEmail = rd["dietitianEmail"].ToString(),
                        DietitianPassword = rd["dietitianPassword"].ToString()

                    });

                }
            }

            com.Dispose();
            com.Connection.Close();
            return list;
        }
        // Name of dietitian get from Dietitian Table 
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
        // All of dietitian information get from Dietitian Table
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
                    dietitian = new DietitianE // Fill new Dietitian Entitiy
                    {
                        DietitianID = Convert.ToInt32(rd["DietitianID"]),
                        Address = rd["Address"].ToString(),
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

        public static void DeleteDietitian(int id)
        {

            SqlCommand com = new SqlCommand("DeleteDietitian", Connection.Con); // Prodecure
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

        public static void UpdateDietitian(DietitianE obj)
        {

            SqlCommand com = new SqlCommand("UpdateDietitian", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.Add(new SqlParameter("@id", obj.DietitianID));
            com.Parameters.Add(new SqlParameter("@address", obj.Address));
            com.Parameters.Add(new SqlParameter("@cv", obj.CV));
            com.Parameters.Add(new SqlParameter("@dietitianEmail", obj.DietitianEmail));
            com.Parameters.Add(new SqlParameter("@dietitianLicense", obj.DietitianLicense));
            com.Parameters.Add(new SqlParameter("@dietitianName", obj.DietitianName));
            com.Parameters.Add(new SqlParameter("@dietitianPassword", obj.DietitianPassword));
            com.Parameters.Add(new SqlParameter("@dietitianPhone", obj.DietitianPhone));
            com.Parameters.Add(new SqlParameter("@dietitianSurname", obj.DietitianSurname));

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
