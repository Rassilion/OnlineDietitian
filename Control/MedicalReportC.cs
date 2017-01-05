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

        public static MedicalReportE getMedicalReportByID(int id)
        {
            MedicalReportE temp = null;
            SqlCommand com = new SqlCommand("getMedicalReportByID", Connection.Con); // Prodecure
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
                    temp = new MedicalReportE
                    {
                        UserID = Convert.ToInt32(rd["UserID"]),
                        DietID = Convert.ToInt32(rd["DietID"]),
                        ReportID = Convert.ToInt32(rd["ReportID"]),
                        Date = DateTime.Parse(rd["Date"].ToString()),
                        BloodTest = rd["BloodTest"] == DBNull.Value ? "" : rd["BloodTest"].ToString(),
                        Disease = rd["Disease"] == DBNull.Value ? "" : rd["Disease"].ToString(),
                        Height = rd["Height"] == DBNull.Value ? "" : rd["Height"].ToString(),
                        UrineTest = rd["UrineTest"] == DBNull.Value ? "" : rd["UrineTest"].ToString(),
                        UsedDrugs = rd["UsedDrugs"] == DBNull.Value ? "" : rd["UsedDrugs"].ToString(),
                        Weight = rd["Weight"] == DBNull.Value ? "" : rd["Weight"].ToString()
                    };

                }
            }

            com.Dispose();
            com.Connection.Close();
            return temp;
        }

        public static MedicalReportE getMedicalReportByUserID(int id)
        {
            MedicalReportE temp = null;
            SqlCommand com = new SqlCommand("getMedicalReportByUserID", Connection.Con); // Prodecure
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
                    temp = new MedicalReportE
                    {
                        UserID = Convert.ToInt32(rd["UserID"]),
                        DietID = Convert.ToInt32(rd["DietID"]),
                        ReportID = Convert.ToInt32(rd["ReportID"]),
                        Date = DateTime.Parse(rd["Date"].ToString()),
                        BloodTest = rd["BloodTest"] == DBNull.Value ? "" : rd["BloodTest"].ToString(),
                        Disease = rd["Disease"] == DBNull.Value ? "" : rd["Disease"].ToString(),
                        Height = rd["Height"] == DBNull.Value ? "" : rd["Height"].ToString(),
                        UrineTest = rd["UrineTest"] == DBNull.Value ? "" : rd["UrineTest"].ToString(),
                        UsedDrugs = rd["UsedDrugs"] == DBNull.Value ? "" : rd["UsedDrugs"].ToString(),
                        Weight = rd["Weight"] == DBNull.Value ? "" : rd["Weight"].ToString()
                    };

                }
            }

            com.Dispose();
            com.Connection.Close();
            return temp;
        }

        public static List<MedicalReportE> selectMedicalReports()
        {
            List<MedicalReportE> list = null;

            SqlCommand com = new SqlCommand("selectMedicalReports", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;

            if (com.Connection.State == ConnectionState.Closed)
            {
                com.Connection.Open();
            }
            SqlDataReader rd = com.ExecuteReader();
            if (rd.HasRows)
            {
                list = new List<MedicalReportE>();
                while (rd.Read())
                {
                    list.Add(new MedicalReportE
                    {
                        UserID = Convert.ToInt32(rd["UserID"]),
                        DietID = Convert.ToInt32(rd["DietID"]),
                        ReportID = Convert.ToInt32(rd["ReportID"]),
                        Date = DateTime.Parse(rd["Date"].ToString()),
                        BloodTest = rd["BloodTest"] == DBNull.Value ? "" : rd["BloodTest"].ToString(),
                        Disease = rd["Disease"] == DBNull.Value ? "" : rd["Disease"].ToString(),
                        Height = rd["Height"] == DBNull.Value ? "" : rd["Height"].ToString(),
                        UrineTest = rd["UrineTest"] == DBNull.Value ? "" : rd["UrineTest"].ToString(),
                        UsedDrugs = rd["UsedDrugs"] == DBNull.Value ? "" : rd["UsedDrugs"].ToString(),
                        Weight = rd["Weight"] == DBNull.Value ? "" : rd["Weight"].ToString()
                    });

                }
            }

            com.Dispose();
            com.Connection.Close();
            return list;
        }

        public static void UpdateMedicalReport(MedicalReportE obj)
        {

            SqlCommand com = new SqlCommand("UpdateMedicalReport", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.Add(new SqlParameter("@dietID", obj.DietID));
            com.Parameters.Add(new SqlParameter("@bloodTest", obj.BloodTest));
            com.Parameters.Add(new SqlParameter("@date", obj.Date));
            com.Parameters.Add(new SqlParameter("@disease", obj.Disease));
            com.Parameters.Add(new SqlParameter("@height", obj.Height));
            com.Parameters.Add(new SqlParameter("@urineTest", obj.UrineTest));
            com.Parameters.Add(new SqlParameter("@usedDrugs", obj.UsedDrugs));
            com.Parameters.Add(new SqlParameter("@userID", obj.UserID));
            com.Parameters.Add(new SqlParameter("@weight", obj.Weight));

            if (com.Connection.State == ConnectionState.Closed)
            {
                com.Connection.Open();
            }
            SqlDataReader rd = com.ExecuteReader();


            com.Dispose();
            com.Connection.Close();

        }

        public static int InsertMedicalReport(MedicalReportE medicalReport)
        {
            int ReportID = 0;
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
            if (rd.HasRows)
            {
                rd.Read();
                ReportID = Convert.ToInt32(rd[0]);


            }

            com.Dispose();
            com.Connection.Close();
            return ReportID;
        }
    }
}
