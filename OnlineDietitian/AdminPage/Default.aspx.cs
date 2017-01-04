using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineDietitian.AdminPage
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserRepeater.DataSource = BusinessLayers.Business.getUsers();
            UserRepeater.DataBind();
        }

        protected void deleteButton(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            switch (btn.CommandName)
            {
                case "user":
                    BusinessLayers.Business.deleteUser(Convert.ToInt32( btn.CommandArgument.ToString()));
                    break;

            }
            Response.Redirect(Request.RawUrl);

        }
    }
}