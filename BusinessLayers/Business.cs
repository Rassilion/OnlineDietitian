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
        public static string getDietitianName(object dietitianID)
        {
            return DietitianC.GetDietitianName((int)dietitianID);
        }

        public static string getDietitianName(int dietitianID)
        {
            return DietitianC.GetDietitianName(dietitianID);
        }

        public static DietitianE getDietitianByDietitianID(int dietitianID)
        {
            return DietitianC.GetDietitianByDietitianID(dietitianID);
        }

        // Login and User Start
        public static int validateUser(string email, string password)
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
    }
}
