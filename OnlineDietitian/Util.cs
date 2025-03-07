﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using Entity;
namespace OnlineDietitian
{
    public static class Util
    {
        public static string summary(this string value)
        {
            return value.Length <= 1000 ? value : value.Substring(0, 1000) + "...";
        }

        public static string MD5hash(string input)
        {
            // Create a new instance of the MD5CryptoServiceProvider object.
            MD5CryptoServiceProvider md5Hasher = new MD5CryptoServiceProvider();

            // Convert the input string to a byte array and compute the hash.
            byte[] data = md5Hasher.ComputeHash(Encoding.Default.GetBytes(input));

            // Create a new Stringbuilder to collect the bytes
            // and create a string.
            StringBuilder sBuilder = new StringBuilder();

            // Loop through each byte of the hashed data 
            // and format each one as a hexadecimal string.
            for (int i = 0; i < data.Length; i++)
            {
                sBuilder.Append(data[i].ToString("x2"));
            }

            // Return the hexadecimal string.
            return sBuilder.ToString();
        }

        public static bool isMD5(string str)
        {
            return Regex.IsMatch(str, @"[0-9a-f]{32}", RegexOptions.IgnoreCase);
        }


        public static string UserRequest(DietViewE view)
        {
            if (view.Health == true)
                return "Health";
            else if (view.Fitness == true)
                return "Fitness";
            else if (view.WeightGain == true)
                return "Weight Gain";
            else if (view.WeightLoss == true)
                return "Weight Loss";


            return "";
        }
    }
}