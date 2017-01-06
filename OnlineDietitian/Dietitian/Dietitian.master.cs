using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineDietitian.Dietitian
{
    public partial class Dietitian : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["dietitian"] == null)
                Response.Redirect("~/Logon.aspx");
        }
    }
}