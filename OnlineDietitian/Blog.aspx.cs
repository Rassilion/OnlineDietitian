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

        // For new blogPost creation
        protected void newpost_button_Click(object sender, EventArgs e)
        {
            Business.newBlogPosts((Session["dietitian"]as DietitianE).DietitianID, title_textbox.Text, content_textbox.Text);
            //Reload Page
            Response.Redirect(Request.RawUrl);
        }
    }
}