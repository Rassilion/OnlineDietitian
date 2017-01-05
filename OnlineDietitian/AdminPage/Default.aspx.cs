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
            DietitianRepeater.DataSource = BusinessLayers.Business.getDietitians();
        }

        protected void deleteButton(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            switch (btn.CommandName)
            {
                case "user":
                    BusinessLayers.Business.deleteUser(btn.CommandArgument.ToString());
                    break;
                case "dietitian":
                    BusinessLayers.Business.deleteDietitian(btn.CommandArgument.ToString());
                    break;
            }
            Response.Redirect(Request.RawUrl);

        }

        protected void selectTable_SelectedIndexChanged(object sender, EventArgs e)
        {
            DietitianRepeater.Dispose();
            DietitianRepeater.Visible = false;
            UserRepeater.Dispose();
            UserRepeater.Visible = false;

            DropDownList drp = (DropDownList)sender;
            switch (drp.SelectedIndex)
            {
                case 1:
                    UserRepeater.DataBind();
                    UserRepeater.Visible = true;
                    break;
                case 2:
                    DietitianRepeater.DataBind();
                    DietitianRepeater.Visible = true;
                    break;

            }

        }
    }
}