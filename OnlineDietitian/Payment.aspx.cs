using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineDietitian
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["user"] == null)
            { Response.Redirect("~/Logon.aspx"); }

        }
        protected void payment_Click(object sender, EventArgs e)
        {
            successPayment.Text = "Your payment is confirmed";
            successPayment.Visible = true;
        }
        
    }
}