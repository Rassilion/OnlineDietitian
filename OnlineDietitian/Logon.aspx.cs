using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayers;
using Entity;

namespace OnlineDietitian
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit1_Click(object sender, EventArgs e)
        {
            switch (Convert.ToInt32(ddlLoginType.Text))
            {
                case 1:
                    UserE user; // Control database for login
                    if ((user = BusinessLayers.Business.validateUser(UserEmail.Text, Util.MD5hash(UserPass.Text))) != null)
                    {
                        Session["user"] = user;
                        Response.Redirect("~/");
                    }
                    else // Invalid email or password
                    {
                        Msg.Text = "Invalid credentials. Please try again.";
                    }

                    break;
                case 2:
                    DietitianE dietitian; // Control database for login
                    if ((dietitian = BusinessLayers.Business.validateDietitian(UserEmail.Text, Util.MD5hash(UserPass.Text))) != null)
                    {
                        Session["dietitian"] = dietitian;
                        Response.Redirect("~/");
                    }
                    else // Invalid email or password
                    {
                        Msg.Text = "Invalid credentials. Please try again.";
                    }
                    break;
            }

        }
    }
}