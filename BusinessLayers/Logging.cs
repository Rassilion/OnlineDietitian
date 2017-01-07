using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayers
{
    public class Logging
    {
        //log
        public static void logRegister(string userid)
        {
            addLog("Register", userid);
        }
        public static void logLoginU(string userid)
        {
            addLog("LoginU", userid);
        }
        public static void logLoginD(string userid)
        {
            addLog("LoginD", userid);
        }
        public static void logLoginFailU(string email)
        {
            addLog("LoginFailU", email);
        }
        public static void logLoginFailD(string email)
        {
            addLog("LoginFailD", email);
        }
        public static void logUpdate(string table, string userID, string id)
        {
            addLog("Update" + table, " userID: " + userID + " update id: " + id);
        }

        public static void logInsert(string table, string userID, string id)
        {
            addLog("Insert" + table, " userID: " + userID + " insert id: " + id);
        }

        public static void logDelete(string table, string userID, string id)
        {
            addLog("Delete" + table, " userID: " + userID + " deleted id: " + id);
        }

        public static void logDiet(string userid, string id)
        {
            addLog("CreateDiet", "userID: " + userid + " DietID: " + id);
        }
        public static void logDietFollowUp(string userid, string id)
        {
            addLog("CreateDietFollowUp", "diettianID: " + userid + " DietID: " + id);
        }

        protected static void addLog(string type, string message)
        {
            Control.LogC.InsertLog(new Entity.LogE { type = type, message = message });
        }
    }
}
