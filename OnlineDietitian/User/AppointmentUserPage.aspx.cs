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
            foreach (DietitianE d in list)
            {
                ddlDietitians.Items.Add(new ListItem(d.getNameSurname(), d.DietitianID.ToString()));
            }

        }

        protected void saveAppointment_Click(object sender, EventArgs e)
        {
            AppointmentE appointment = new AppointmentE();
            appointment.UserID = (Session["user"] as Entity.UserE).UserID;
            appointment.AppointmentContent = appointment_textbox.Text;
            appointment.AppointmentDate = DateTime.Parse(appointmentBox.Text);

            if (Convert.ToInt32(ddlDietitians.Text) != 0)
            {
                appointment.DietitianID = Convert.ToInt32(ddlDietitians.Text);
                BusinessLayers.Business.insertAppointment(appointment);
                error.Text = "Success Appointment";
                error.Visible = true;
            }
            else
            {
                error.Text = "Please select dietitian";
                error.Visible = true;
            }
        }
    }
}