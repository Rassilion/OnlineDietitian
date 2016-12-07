using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayers;
using Entity;

namespace OnlineDietitian
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            blogPostRepeater.DataSource = BusinessLayers.Business.getBlogPosts();
            blogPostRepeater.DataBind();

        }

        protected void newpost_button_Click(object sender, EventArgs e)
        {
            Business.newBlogPosts(Convert.ToInt32(dietitianID_textbox.Text), title_textbox.Text, content_textbox.Text);
            //Reload Page
            Response.Redirect(Request.RawUrl);
        }

        protected void deletePost_button_Click(object sender, EventArgs e)
        {
            Business.deleteBlogPost(Convert.ToInt32(blogID_textbox.Text));
            //Reload Page
            Response.Redirect(Request.RawUrl);
        }
    }
}