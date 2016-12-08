using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineDietitian
{
    public static class Util
    {
        public static string summary(this string value)
        {
            return value.Length <= 1000 ? value : value.Substring(0, 1000) + "...";
        }
    }
}