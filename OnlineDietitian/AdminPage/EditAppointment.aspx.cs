using Entity;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineDietitian.AdminPage
{
    public partial class EditAppointment : System.Web.UI.Page
    {

        protected Entity.AppointmentE currentAppointment;
        protected bool newEntity;
        protected void Page_Load(object sender, EventArgs e)
        {
            // Get "id" from URL
            string id = Page.RouteData.Values["id"] as string;
            if (id != null)
            {
                newEntity = false;
                if (id == "new")
                {
                    currentAppointment = new AppointmentE();
                    newEntity = true;
                }
                else
                {
                    currentAppointment = BusinessLayers.Business.getAppointmentByID(id);
                    if (currentAppointment != null)
                    {
                        if (!Page.IsPostBack)
                        {
                            dietitianidBox.Text = currentAppointment.DietitianID.ToString();
                            useridBox.Text = currentAppointment.UserID.ToString();
                            dateBox.Text = currentAppointment.AppointmentDate.ToString("yyyy-MM-dd");
                            statusBox.Text = currentAppointment.AppointmentStatus;
                        }
                    }
                    else
                    {
                        error.Text = "Appointment not in the database";
                        error.Visible = true;
                    }
                }

            }
            else
            {
                Response.Redirect("~/AdminPage/Default.aspx");
            }

        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            if (currentAppointment != null)
            {
                string asd = dateBox.Text;
                currentAppointment.AppointmentDate = DateTime.ParseExact(asd, "yyyy-MM-dd", CultureInfo.CurrentCulture);
                currentAppointment.DietitianID = Convert.ToInt32(dietitianidBox.Text);
                currentAppointment.AppointmentStatus = statusBox.Text;
                currentAppointment.UserID = Convert.ToInt32(useridBox.Text);

                try
                {
                    if (newEntity)
                        BusinessLayers.Business.insertAppointment(currentAppointment);
                    else
                        BusinessLayers.Business.updateAppointment(currentAppointment);
                }
                catch (SqlException ex)
                {
                    error.Text = ex.Message;
                    error.Visible = true;
                }


            }
        }
    }
}