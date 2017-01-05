using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineDietitian.Dietitian
{
    public partial class PatientDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["dietitian"] == null)
                Response.Redirect("~/Logon.aspx");

        }
    }
}