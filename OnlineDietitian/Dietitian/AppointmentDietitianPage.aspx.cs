using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using BusinessLayers;

namespace OnlineDietitian.Dietitian
{
    public partial class AppointmentDietitianPage : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["dietitian"] == null)
                Response.Redirect("~/Logon.aspx");


            appointmentRepeater.DataSource = BusinessLayers.Business.getAppointmentsByDietitianID((Session["dietitian"] as Entity.DietitianE).DietitianID.ToString());
            appointmentRepeater.DataBind();


        }
    }
}