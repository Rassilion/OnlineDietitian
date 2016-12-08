using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayers;

namespace OnlineDietitian
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit1_Click(object sender, EventArgs e)
        {
            int t;
            if ((t = BusinessLayers.Business.validateUser(UserEmail.Text, UserPass.Text)) !=-1)
            {
                Global.userID = t;
                Response.Redirect("~/");
            }
            else
            {
                Msg.Text = "Invalid credentials. Please try again.";
            }
        }
    }
}