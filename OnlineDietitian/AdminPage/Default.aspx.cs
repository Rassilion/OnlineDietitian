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
            DietRepeater.DataSource = BusinessLayers.Business.getDiets();
            BlogPostRepeater.DataSource = BusinessLayers.Business.getBlogPosts();
            PaymentRepeater.DataSource = BusinessLayers.Business.getPayments();
            MedicalReportRepeater.DataSource = BusinessLayers.Business.getMedicalReports();
            AppointmentRepeater.DataSource = BusinessLayers.Business.getAppointments();
            DietRequestRepeater.DataSource = BusinessLayers.Business.getDietRequests();
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
            DietRepeater.Visible = false;
            BlogPostRepeater.Visible = false;
            PaymentRepeater.Visible = false;
            MedicalReportRepeater.Visible = false;
            AppointmentRepeater.Visible = false;
            DietRequestRepeater.Visible = false;
            DietRepeater.Dispose();
            BlogPostRepeater.Dispose();
            PaymentRepeater.Dispose();
            MedicalReportRepeater.Dispose();
            AppointmentRepeater.Dispose();
            DietRequestRepeater.Dispose();

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
                case 3:
                    AppointmentRepeater.DataBind();
                    AppointmentRepeater.Visible = true;
                    break;
                case 4:
                    PaymentRepeater.DataBind();
                    PaymentRepeater.Visible = true;
                    break;
                case 5:
                    MedicalReportRepeater.DataBind();
                    MedicalReportRepeater.Visible = true;
                    break;
                case 6:
                    DietRequestRepeater.DataBind();
                    DietRequestRepeater.Visible = true;
                    break;
                case 7:
                    DietRepeater.DataBind();
                    DietRepeater.Visible = true;
                    break;
                case 8:
                    BlogPostRepeater.DataBind();
                    BlogPostRepeater.Visible = true;
                    break;

            }

        }

        protected void newButton_Click(object sender, EventArgs e)
        {
            switch (selectTable.SelectedIndex)
            {
                case 1:
                    Response.Redirect("~/AdminPage/EditUser/new");
                    break;
                case 2:
                    Response.Redirect("~/AdminPage/EditDietitian/new");
                    break;
                case 0:
                    break;
            }

        }
    }
}