﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Entity;

namespace Control
{
    public class AppointmentC
    {
        public static void DeleteAppointment(int id)
        {

            SqlCommand com = new SqlCommand("DeleteAppointment", Connection.Con); // Prodecure
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

        public static AppointmentE getAppointmentByID(int id)
        {
            AppointmentE temp = null;
            SqlCommand com = new SqlCommand("getAppointmentByID", Connection.Con); // Prodecure
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
                    temp = new AppointmentE
                    {
                        AppointmentID = Convert.ToInt32(rd["AppointmentID"]),
                        AppointmentStatus = rd["AppointmentStatus"].ToString(),
                        UserID = Convert.ToInt32(rd["UserID"]),
                        DietitianID = Convert.ToInt32(rd["DietitianID"]),
                        AppointmentDate = DateTime.Parse(rd["AppointmentDate"].ToString())
                    };

                }
            }

            com.Dispose();
            com.Connection.Close();
            return temp;
        }

        public static List<AppointmentE> selectAppointments()
        {
            List<AppointmentE> list = null;

            SqlCommand com = new SqlCommand("selectAppointments", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;

            if (com.Connection.State == ConnectionState.Closed)
            {
                com.Connection.Open();
            }
            SqlDataReader rd = com.ExecuteReader();
            if (rd.HasRows)
            {
                list = new List<AppointmentE>();
                while (rd.Read())
                {
                    list.Add(new AppointmentE
                    {
                        AppointmentID = Convert.ToInt32(rd["AppointmentID"]),
                        AppointmentStatus = rd["AppointmentStatus"].ToString(),
                        UserID = Convert.ToInt32(rd["UserID"]),
                        DietitianID = Convert.ToInt32(rd["DietitianID"]),
                        AppointmentDate = DateTime.Parse(rd["AppointmentDate"].ToString())
                    });

                }
            }

            com.Dispose();
            com.Connection.Close();
            return list;
        }

        public static void UpdateAppointment(AppointmentE obj)
        {

            SqlCommand com = new SqlCommand("UpdateAppointment", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.Add(new SqlParameter("@appointmentDate", obj.AppointmentDate));
            com.Parameters.Add(new SqlParameter("@dietitianID", obj.DietitianID));
            com.Parameters.Add(new SqlParameter("@appointmentStatus", obj.AppointmentStatus));
            com.Parameters.Add(new SqlParameter("@userID", obj.UserID));

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
