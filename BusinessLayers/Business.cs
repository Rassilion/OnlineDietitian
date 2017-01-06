using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entity;
using Control;

namespace BusinessLayers
{
    public class Business
    {
        // BlogPost start
        public static List<BlogPostE> getBlogPosts()
        {
            return BlogPostC.GetBlogPosts();
        }

        public static void newBlogPosts(int dietitianID, string title, string content)
        {
            BlogPostC.NewBlogPost(dietitianID, title, content);
        }
        public static void newBlogPost(BlogPostE obj)
        {
            BlogPostC.NewBlogPost(obj.DietitanID, obj.Title, obj.BlogContent);
        }

        public static void deleteBlogPost(int blogID)
        {
            BlogPostC.DeleteBlogPost(blogID);
        }

        public static void deleteBlogPost(string blogID)
        {
            BlogPostC.DeleteBlogPost(Convert.ToInt32(blogID));
        }

        public static void updateBlogPost(int blogID, int dietitianID, string title, string content)
        {
            BlogPostC.UpdateBlogPost(blogID, dietitianID, title, content);
        }

        public static object getDietViews()
        {
            throw new NotImplementedException();
        }

        public static void updateBlogPost(BlogPostE obj)
        {
            BlogPostC.UpdateBlogPost(obj.BlogID, obj.DietitanID, obj.Title, obj.BlogContent);
        }
        public static BlogPostE getBlogPostByBlogID(int blogID)
        {
            return BlogPostC.GetBlogPostByBlogID(blogID);
        }

        public static BlogPostE getBlogPostByBlogID(string blogID)
        {
            return BlogPostC.GetBlogPostByBlogID(Convert.ToInt32(blogID));
        }


        // Dietitian Start
        //for blogpost reapeter

        public static List<DietitianE> getDietitians()
        {
            return DietitianC.GetDietitians();
        }

        public static string getDietitianName(object dietitianID)
        {
            return DietitianC.GetDietitianName((int)dietitianID);
        }

        public static string getDietitianName(int dietitianID)
        {
            return DietitianC.GetDietitianName(dietitianID);
        }

        public static DietitianE getDietitianByDietitianID(string dietitianID)
        {
            return DietitianC.GetDietitianByDietitianID(Convert.ToInt32(dietitianID));
        }

        public static void updateDietitian(DietitianE obj)
        {
            DietitianC.UpdateDietitian(obj);
        }

        public static void deleteDietitian(string id)
        {
            DietitianC.DeleteDietitian(Convert.ToInt32(id));
        }

        // Login and User Start
        public static UserE validateUser(string email, string password)
        {
            return UserC.validateUser(email, password);
        }
        public static DietitianE validateDietitian(string email, string password)
        {
            return DietitianC.ValidateDietitian(email, password);
        }


        public static string getUserName(int userID)
        {
            return UserC.GetUserName(userID);
        }


        //Register Start
        public static void insertUser(UserE user)
        {

            UserC.InsertUser(user);
        }

        public static int checkUserEmail(string email)
        {
            return UserC.CheckUserEmail(email);

        }

        // UserPage Start
        public static void updateUser(UserE user)
        {
            UserC.UpdateUser(user);
        }

        public static List<UserE> getUsers()
        {
            return UserC.selectUsers();
        }

        public static void deleteUser(string id)
        {
            UserC.DeleteUser(Convert.ToInt32(id));
        }

        public static UserE getUserByID(string id)
        {
            return UserC.getUserByID(Convert.ToInt32(id));
        }

        //Appointment
        public static List<AppointmentE> getAppointments()
        {
            return AppointmentC.selectAppointments();
        }
        public static AppointmentE getAppointmentByID(string id)
        {
            return AppointmentC.getAppointmentByID(Convert.ToInt32(id));
        }
        public static void insertAppointment(AppointmentE obj)
        {
            //AppointmentC.InsertAppointment(obj);
        }
        public static void updateAppointment(AppointmentE obj)
        {
            AppointmentC.UpdateAppointment(obj);
        }

        public static void deleteAppointment(string id)
        {
            AppointmentC.DeleteAppointment(Convert.ToInt32(id));
        }

        //Payment
        public static List<PaymentE> getPayments()
        {
            return PaymentC.selectPayments();
        }

        public static PaymentE getPaymentByID(string id)
        {
            return PaymentC.getPaymentByID(Convert.ToInt32(id));
        }
        public static void insertPayment(PaymentE obj)
        {
            PaymentC.InsertPayment(obj);
        }
        public static void updatePayment(PaymentE obj)
        {
            PaymentC.UpdatePayment(obj);
        }
        public static List<PaymentE> getPaymentWithNullByUserID(int id)
        {
            return PaymentC.getPaymentWithNullByUserID(id);
        }

        public static void deletePayment(string id)
        {
            PaymentC.DeletePayment(Convert.ToInt32(id));
        }

        //MedicalReport
        public static List<MedicalReportE> getMedicalReports()
        {
            return MedicalReportC.selectMedicalReports();
        }
        public static MedicalReportE getMedicalReportByID(string id)
        {
            return MedicalReportC.getMedicalReportByID(Convert.ToInt32(id));
        }
        public static int insertMedicalReport(MedicalReportE obj)
        {
            return MedicalReportC.InsertMedicalReport(obj);
        }
        public static void updateMedicalReport(MedicalReportE obj)
        {
            MedicalReportC.UpdateMedicalReport(obj);
        }

        public static void deleteMedicalReport(string id)
        {
            MedicalReportC.DeleteMedicalReport(Convert.ToInt32(id));
        }
        public static MedicalReportE getMedicalReportByUserID(string id)
        {
            return MedicalReportC.getMedicalReportByUserID(Convert.ToInt32(id));
        }


        //Diet
        public static List<DietE> getDiets()
        {
            return DietC.selectDiets();
        }
        public static List<DietE> getDietsWithoutNull()
        {
            return DietC.selectDietsWithoutNull();
        }
        public static DietE getDietByID(string id)
        {
            return DietC.getDietByID(Convert.ToInt32(id));
        }
        public static int insertDiet(DietE obj)
        {
            return DietC.InsertDiet(obj);
        }
        public static void updateDiet(DietE obj)
        {
            DietC.UpdateDiet(obj);
        }

        public static void deleteDiet(string id)
        {
            DietC.DeleteDiet(Convert.ToInt32(id));
        }
        public static void getDietIDByDietitianAndUserID(int dietitianID, int userID)
        {
            DietC.getDietIDByDietitianAndUserID(dietitianID, userID);
        }


        //DietRequest
        public static List<DietRequestE> getDietRequests()
        {
            return DietRequestC.selectDietRequests();
        }
        public static DietRequestE getDietRequestByID(string id)
        {
            return DietRequestC.getDietRequestByID(Convert.ToInt32(id));
        }
        public static int insertDietRequest(DietRequestE obj)
        {
            return DietRequestC.InsertDietRequest(obj);
        }
        public static void updateDietRequest(DietRequestE obj)
        {
            DietRequestC.UpdateDietRequest(obj);
        }

        public static void deleteDietRequest(string id)
        {
            DietRequestC.DeleteDietRequest(Convert.ToInt32(id));
        }

        public static int getRequestIDByUserID(string id)
        {
            return DietC.getRequestIDByUserID(Convert.ToInt32(id));
        }
        // DietView
        public static List<DietViewE> getDietViewByDietitianID(string id)
        {
            return DietViewC.getDietViewByDietitianID(Convert.ToInt32(id));
        }
        public static DietViewE getDietViewByDietID(string id)
        {
            return DietViewC.getDietViewByDietID(Convert.ToInt32(id));
        }



    }
}
