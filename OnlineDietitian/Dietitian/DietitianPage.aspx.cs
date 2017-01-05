using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineDietitian.Dietitian
{
    public partial class DietitianPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["dietitian"] == null)
                Response.Redirect("~/Logon.aspx");
            userRepeater.DataSource = BusinessLayers.Business.getDietViewByDietitianID((Session["dietitian"] as Entity.DietitianE).DietitianID.ToString());
            userRepeater.DataBind();
        }


        
    }
}