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
    public partial class DietFollowUp : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
                Response.Redirect("~/Logon.aspx");

            dietRepeater.DataSource = BusinessLayers.Business.getDietsWithoutNull();
            dietRepeater.DataBind();
        }
    }
}