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
    public class DietViewC
    {

        public static List<DietViewE> selectDietViews()
        {
            List<DietViewE> list = null;

            SqlCommand com = new SqlCommand("selectDietViews", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;

             if (com.Connection.State == ConnectionState.Closed)
            {
                com.Connection.Open();
            }
            SqlDataReader rd = com.ExecuteReader();
            if (rd.HasRows)
            {
                list = new List<DietViewE>();
                while (rd.Read())
                {
                    list.Add(new DietViewE
                    {
                        RequestID = Convert.ToInt32(rd["RequestID"]),
                        DietContent = rd["DietContent"].ToString(),
                        DietitianID = Convert.ToInt32(rd["DietitianID"]),
                        RequestContent = rd["RequestContent"].ToString(),
                        Health = Convert.ToBoolean(rd["Health"]),
                        Fitness = Convert.ToBoolean(rd["Fitness"]),
                        WeightLoss = Convert.ToBoolean(rd["WeightLoss"]),
                        WeightGain = Convert.ToBoolean(rd["WeightGain"]),
                        UserID = Convert.ToInt32(rd["UserID"]),
                        DietID = Convert.ToInt32(rd["DietID"]),
                        ReportID = Convert.ToInt32(rd["ReportID"]),
                        BloodTest = rd["BloodTest"] == DBNull.Value ? "" : rd["BloodTest"].ToString(),
                        Disease = rd["Disease"] == DBNull.Value ? "" : rd["Disease"].ToString(),
                        Height = rd["Height"] == DBNull.Value ? "" : rd["Height"].ToString(),
                        UrineTest = rd["UrineTest"] == DBNull.Value ? "" : rd["UrineTest"].ToString(),
                        UsedDrugs = rd["UsedDrugs"] == DBNull.Value ? "" : rd["UsedDrugs"].ToString(),
                        Weight = rd["Weight"] == DBNull.Value ? "" : rd["Weight"].ToString(),
                        UserName = rd["UserName"].ToString(),
                        UserSurname = rd["UserSurname"].ToString(),
                        UserEmail = rd["UserEmail"].ToString(),
                        UserBodyPhoto = rd["BodyPhoto"] == DBNull.Value ? "" : rd["BodyPhoto"].ToString(),
                        UserBirth = DateTime.Parse(rd["UserBirth"].ToString()),
                        Gender = rd["Gender"] == DBNull.Value ? "" : rd["Gender"].ToString()
                    });

                }
            }

            com.Dispose();
            com.Connection.Close();
            return list;
        }
        public static List<DietViewE> getDietViewByDietitianID(int id)
        {

            List<DietViewE> list = null;
            SqlCommand com = new SqlCommand("getDietViewByDietitianID", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.Add(new SqlParameter("@id", id));

            if (com.Connection.State == ConnectionState.Closed)
            {
                com.Connection.Open();
            }
            SqlDataReader rd = com.ExecuteReader();
            if (rd.HasRows)
            {
                list = new List<DietViewE>();
                while (rd.Read())
                {
                    list.Add(new DietViewE
                    {
                        RequestID = Convert.ToInt32(rd["RequestID"]),
                        DietContent = rd["DietContent"].ToString(),
                        DietitianID = Convert.ToInt32(rd["DietitianID"]),
                        RequestContent = rd["RequestContent"].ToString(),
                        Health = Convert.ToBoolean(rd["Health"]),
                        Fitness = Convert.ToBoolean(rd["Fitness"]),
                        WeightLoss = Convert.ToBoolean(rd["WeightLoss"]),
                        WeightGain = Convert.ToBoolean(rd["WeightGain"]),
                        UserID = Convert.ToInt32(rd["UserID"]),
                        DietID = Convert.ToInt32(rd["DietID"]),
                        ReportID = Convert.ToInt32(rd["ReportID"]),
                        BloodTest = rd["BloodTest"] == DBNull.Value ? "" : rd["BloodTest"].ToString(),
                        Disease = rd["Disease"] == DBNull.Value ? "" : rd["Disease"].ToString(),
                        Height = rd["Height"] == DBNull.Value ? "" : rd["Height"].ToString(),
                        UrineTest = rd["UrineTest"] == DBNull.Value ? "" : rd["UrineTest"].ToString(),
                        UsedDrugs = rd["UsedDrugs"] == DBNull.Value ? "" : rd["UsedDrugs"].ToString(),
                        Weight = rd["Weight"] == DBNull.Value ? "" : rd["Weight"].ToString(),
                        UserName = rd["UserName"].ToString(),
                        UserSurname = rd["UserSurname"].ToString(),
                        UserEmail = rd["UserEmail"].ToString(),
                        UserBodyPhoto = rd["BodyPhoto"] == DBNull.Value ? "" : rd["BodyPhoto"].ToString(),
                        UserBirth = DateTime.Parse(rd["UserBirth"].ToString()),
                        Gender = rd["Gender"] == DBNull.Value ? "" : rd["Gender"].ToString()
                    });

                }
            }

            com.Dispose();
            com.Connection.Close();
            return list;
        }



        public static DietViewE getDietViewByDietID(int id)
        {

            DietViewE temp = null;
            SqlCommand com = new SqlCommand("getDietViewByDietID", Connection.Con); // Prodecure
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
                    temp = new DietViewE
                    {
                        RequestID = Convert.ToInt32(rd["RequestID"]),
                        DietContent = rd["DietContent"].ToString(),
                        DietitianID = Convert.ToInt32(rd["DietitianID"]),
                        RequestContent = rd["RequestContent"].ToString(),
                        Health = Convert.ToBoolean(rd["Health"]),
                        Fitness = Convert.ToBoolean(rd["Fitness"]),
                        WeightLoss = Convert.ToBoolean(rd["WeightLoss"]),
                        WeightGain = Convert.ToBoolean(rd["WeightGain"]),
                        UserID = Convert.ToInt32(rd["UserID"]),
                        DietID = Convert.ToInt32(rd["DietID"]),
                        ReportID = Convert.ToInt32(rd["ReportID"]),
                        BloodTest = rd["BloodTest"] == DBNull.Value ? "" : rd["BloodTest"].ToString(),
                        Disease = rd["Disease"] == DBNull.Value ? "" : rd["Disease"].ToString(),
                        Height = rd["Height"] == DBNull.Value ? "" : rd["Height"].ToString(),
                        UrineTest = rd["UrineTest"] == DBNull.Value ? "" : rd["UrineTest"].ToString(),
                        UsedDrugs = rd["UsedDrugs"] == DBNull.Value ? "" : rd["UsedDrugs"].ToString(),
                        Weight = rd["Weight"] == DBNull.Value ? "" : rd["Weight"].ToString(),
                        UserName = rd["UserName"].ToString(),
                        UserSurname = rd["UserSurname"].ToString(),
                        UserEmail = rd["UserEmail"].ToString(),
                        UserBodyPhoto = rd["BodyPhoto"] == DBNull.Value ? "" : rd["BodyPhoto"].ToString(),
                        UserBirth = DateTime.Parse(rd["UserBirth"].ToString()),
                        Gender = rd["Gender"] == DBNull.Value ? "" : rd["Gender"].ToString()
                    };

                }
            }

            com.Dispose();
            com.Connection.Close();
            return temp;
        }

    }



}
