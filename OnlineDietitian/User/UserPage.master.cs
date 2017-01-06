using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using BusinessLayers;
namespace OnlineDietitian.User
{
    public partial class UserPage1 : System.Web.UI.MasterPage
    {
        protected DietViewE currentDietView;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
                Response.Redirect("~/Logon.aspx");

            avatar.ImageUrl = "~" + (Session["user"] as Entity.UserE).UserBodyPhoto;
          
            

        }
    }
}