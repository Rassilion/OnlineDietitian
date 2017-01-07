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
    public partial class AppointmentUserPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
                Response.Redirect("~/Logon.aspx");

            List<DietitianE> list = BusinessLayers.Business.getDietitians();
            foreach(DietitianE d in list)
            {
                ddlDietitians.Items.Add(new ListItem(d.getNameSurname(),d.DietitianID.ToString()));
            }

        }

        protected void saveAppointment_Click(object sender, EventArgs e)
        {
            AppointmentE appointment = new AppointmentE();
             


        }

    }
}