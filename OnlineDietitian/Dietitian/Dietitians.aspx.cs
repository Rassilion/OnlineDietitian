using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayers;
using Entity;


namespace OnlineDietitian.Dietitian
{
    public partial class Dietitians : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
                Response.Redirect("~/Logon.aspx");
            dietitianRepeater.DataSource = BusinessLayers.Business.getDietitians();
            dietitianRepeater.DataBind();

        }

        protected void selectDietitian_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            Session["selectedDietitianID"] = Convert.ToInt32(btn.CommandArgument);
            Response.Redirect("~/User/DietRequest");
        }

    }
}