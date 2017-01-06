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
    public partial class DietsDetail : System.Web.UI.Page
    {
        protected DietViewE currentDietView;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
                Response.Redirect("~/Logon.aspx");
            // Get "id" from URL
            string id = Page.RouteData.Values["id"] as string;
            if (id != null)
            {
                currentDietView = BusinessLayers.Business.getDietViewByDietID(id);

            }
        }
    }
}