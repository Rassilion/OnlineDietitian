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
    public class MedicalReportC
    {
        public static void DeleteMedicalReport(int id)
        {

            SqlCommand com = new SqlCommand("DeleteMedicalReport", Connection.Con); // Prodecure
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
        public static void InsertMedicalReport(MedicalReportE medicalReport)
        {

            SqlCommand com = new SqlCommand("InsertMedicalReport", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;

            com.Parameters.Add(new SqlParameter("@dietID", medicalReport.DietID));
            com.Parameters.Add(new SqlParameter("@userID", medicalReport.UserID));
            com.Parameters.Add(new SqlParameter("@usedDrugs", medicalReport.UsedDrugs));
            com.Parameters.Add(new SqlParameter("@disease", medicalReport.Disease));
            com.Parameters.Add(new SqlParameter("@height", medicalReport.Height));
            com.Parameters.Add(new SqlParameter("@weight", medicalReport.Weight)); 
            com.Parameters.Add(new SqlParameter("@urineTest", medicalReport.UrineTest));
            com.Parameters.Add(new SqlParameter("@bloodTest", medicalReport.BloodTest));

            
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
