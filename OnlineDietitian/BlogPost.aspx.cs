using Entity;
using BusinessLayers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace OnlineDietitian
{
    public partial class BlogPost : System.Web.UI.Page
    {
        protected BlogPostE currentPost;

        protected void Page_Load(object sender, EventArgs e)
        {
            // Get "id" from URL
            string blogpostid = Page.RouteData.Values["id"] as string;
            // ID of BlogPost get Database
            currentPost = BusinessLayers.Business.getBlogPostByBlogID(Convert.ToInt32(blogpostid));
           
        }
    }
}