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


    }
}
