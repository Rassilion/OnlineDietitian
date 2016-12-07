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
    public class BlogPostC
    {
        public static List<BlogPostE> GetBlogPosts()
        {
            List<BlogPostE> list = null;

            SqlCommand com = new SqlCommand("SelectBlogPosts", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;

            if (com.Connection.State == ConnectionState.Closed)
            {
                com.Connection.Open();
            }
            SqlDataReader rd = com.ExecuteReader();
            if (rd.HasRows)
            {
                list = new List<BlogPostE>();
                while (rd.Read())
                {
                    list.Add(new BlogPostE
                    {
                        BlogID = Convert.ToInt32(rd["blogID"]),
                        DietitanID = Convert.ToInt32(rd["dietitianID"]),
                        Title = rd["title"].ToString(),
                        BlogContent = rd["blogContent"].ToString(),
                        PostDate = DateTime.Parse(rd["PostDate"].ToString())
                    });

                }
            }

            com.Dispose();
            com.Connection.Close();
            return list;
        }

        public static void NewBlogPost(int dietitianID, string title, string content)
        {

            SqlCommand com = new SqlCommand("NewBlogPost", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.Add(new SqlParameter("@dietitianID", dietitianID));
            com.Parameters.Add(new SqlParameter("@title", title));
            com.Parameters.Add(new SqlParameter("@content", content));

            if (com.Connection.State == ConnectionState.Closed)
            {
                com.Connection.Open();
            }
            SqlDataReader rd = com.ExecuteReader();


            com.Dispose();
            com.Connection.Close();

        }

        public static void DeleteBlogPost(int blogID)
        {

            SqlCommand com = new SqlCommand("DeleteBlogPost", Connection.Con); // Prodecure
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.Add(new SqlParameter("@blogID", blogID));

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
