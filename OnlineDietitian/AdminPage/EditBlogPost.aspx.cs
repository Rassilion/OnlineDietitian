using Entity;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineDietitian.AdminPage
{
    public partial class EditBlogPost : System.Web.UI.Page
    {
        protected Entity.BlogPostE currentBlogPost;
        protected bool newEntity;
        protected void Page_Load(object sender, EventArgs e)
        {
            // Get "id" from URL
            string id = Page.RouteData.Values["id"] as string;
            if (id != null)
            {
                newEntity = false;
                if (id == "new")
                {
                    currentBlogPost = new BlogPostE();
                    newEntity = true;
                }
                else
                {
                    currentBlogPost = BusinessLayers.Business.getBlogPostByBlogID(id);
                    if (currentBlogPost != null)
                    {
                        if (!Page.IsPostBack)
                        {
                            dietitianidBox.Text = currentBlogPost.DietitanID.ToString();
                            contentBox.Text = currentBlogPost.BlogContent;
                            dateBox.Text = currentBlogPost.PostDate.ToString("yyyy-MM-dd");
                            titleBox.Text = currentBlogPost.Title;
                        }
                    }
                    else
                    {
                        error.Text = "BlogPost not in the database";
                        error.Visible = true;
                    }
                }

            }
            else
            {
                Response.Redirect("~/AdminPage/Default.aspx");
            }

        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            if (currentBlogPost != null)
            {
                string asd = dateBox.Text;
                currentBlogPost.PostDate = DateTime.ParseExact(asd, "yyyy-MM-dd", CultureInfo.CurrentCulture);
                currentBlogPost.DietitanID = Convert.ToInt32(dietitianidBox.Text);
                currentBlogPost.BlogContent = contentBox.Text;
                currentBlogPost.Title = titleBox.Text;

                try
                {
                    if (newEntity)
                        BusinessLayers.Business.newBlogPost(currentBlogPost);
                    else
                        BusinessLayers.Business.updateBlogPost(currentBlogPost);
                }
                catch (SqlException ex)
                {
                    error.Text = ex.Message;
                    error.Visible = true;
                }


            }
        }
    }
}