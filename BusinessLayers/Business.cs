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

        public static void deleteBlogPost(int blogID)
        {
            BlogPostC.DeleteBlogPost(blogID);
        }

        public static void updateBlogPost(int blogID, int dietitianID, string title, string content)
        {
            BlogPostC.UpdateBlogPost(blogID, dietitianID, title, content);
        }
        public static BlogPostE getBlogPostByBlogID(int blogID)
        {
            return BlogPostC.GetBlogPostByBlogID(blogID);
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



        public static int insertMedicalReport(MedicalReportE medicalReport)
        {
            return MedicalReportC.InsertMedicalReport(medicalReport);
        }

        public static int insertDietRequest(DietRequestE dietRequest)
        {
            return DietRequestC.InsertDietRequest(dietRequest);
        }

        public static void insertDiet(DietE diet)
        {
            DietC.InsertDiet(diet);
        }



    }
}
