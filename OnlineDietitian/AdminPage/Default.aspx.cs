using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineDietitian.AdminPage
{
    public partial class Default : System.Web.UI.Page
    {
        protected int logPage=0;
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
            DietViewRepeater.DataSource = BusinessLayers.Business.getDietViews();
            LogRepeater.DataSource = BusinessLayers.Business.getLogs(logPage);
        }

        protected void deleteButton(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            try
            {
                switch (btn.CommandName)
                {
                    case "user":
                        BusinessLayers.Business.deleteUser(btn.CommandArgument.ToString());
                        BusinessLayers.Logging.logDelete("User", (Session["user"] as Entity.UserE).UserID.ToString(), btn.CommandArgument.ToString());
                        break;
                    case "dietitian":
                        BusinessLayers.Business.deleteDietitian(btn.CommandArgument.ToString());
                        BusinessLayers.Logging.logDelete("Dietitian", (Session["user"] as Entity.UserE).UserID.ToString(), btn.CommandArgument.ToString());
                        break;
                    case "payment":
                        BusinessLayers.Business.deletePayment(btn.CommandArgument.ToString());
                        BusinessLayers.Logging.logDelete("Payment", (Session["user"] as Entity.UserE).UserID.ToString(), btn.CommandArgument.ToString());
                        break;
                    case "appointment":
                        BusinessLayers.Business.deleteAppointment(btn.CommandArgument.ToString());
                        BusinessLayers.Logging.logDelete("Appointment", (Session["user"] as Entity.UserE).UserID.ToString(), btn.CommandArgument.ToString());
                        break;
                    case "medicalreport":
                        BusinessLayers.Business.deleteMedicalReport(btn.CommandArgument.ToString());
                        BusinessLayers.Logging.logDelete("MedicalReport", (Session["user"] as Entity.UserE).UserID.ToString(), btn.CommandArgument.ToString());
                        break;
                    case "diet":
                        BusinessLayers.Business.deleteDiet(btn.CommandArgument.ToString());
                        BusinessLayers.Logging.logDelete("Diet", (Session["user"] as Entity.UserE).UserID.ToString(), btn.CommandArgument.ToString());
                        break;
                    case "blogpost":
                        BusinessLayers.Business.deleteBlogPost(btn.CommandArgument.ToString());
                        BusinessLayers.Logging.logDelete("BlogPost", (Session["user"] as Entity.UserE).UserID.ToString(), btn.CommandArgument.ToString());
                        break;
                    case "dietrequest":
                        BusinessLayers.Business.deleteDietRequest(btn.CommandArgument.ToString());
                        BusinessLayers.Logging.logDelete("DietRequest", (Session["user"] as Entity.UserE).UserID.ToString(), btn.CommandArgument.ToString());
                        break;
                }
                Response.Redirect(Request.RawUrl);
            }
            catch (SqlException ex)
            {
                error.Text = ex.Message;
                error.Visible = true;
            }

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
            DietViewRepeater.Visible = false;
            DietRepeater.Dispose();
            BlogPostRepeater.Dispose();
            PaymentRepeater.Dispose();
            MedicalReportRepeater.Dispose();
            AppointmentRepeater.Dispose();
            DietRequestRepeater.Dispose();
            DietViewRepeater.Dispose();
            LogRepeater.Visible = false;
            LogRepeater.Dispose();

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
                case 9:
                    DietViewRepeater.DataBind();
                    DietViewRepeater.Visible = true;
                    break;
                case 10:
                    LogRepeater.DataBind();
                    LogRepeater.Visible = true;
                    break;

            }

        }
        protected void nextButton(object sender, EventArgs e)
        {
            logPage++;
            LogRepeater.DataSource = BusinessLayers.Business.getLogs(logPage);
            LogRepeater.DataBind();
            LogRepeater.Visible = true;
        }

        protected void prevButton(object sender, EventArgs e)
        {
            logPage--;
            if (logPage < 0)
                logPage = 0;
            LogRepeater.DataSource = BusinessLayers.Business.getLogs(logPage);
            LogRepeater.DataBind();
            LogRepeater.Visible = true;
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
                case 3:
                    Response.Redirect("~/AdminPage/EditAppointment/new");
                    break;
                case 4:
                    Response.Redirect("~/AdminPage/EditPayment/new");
                    break;
                case 5:
                    Response.Redirect("~/AdminPage/EditMedicalReport/new");
                    break;
                case 6:
                    Response.Redirect("~/AdminPage/EditDietRequest/new");
                    break;
                case 7:
                    Response.Redirect("~/AdminPage/EditDiet/new");
                    break;
                case 8:
                    Response.Redirect("~/AdminPage/EditBlogPost/new");
                    break;
                case 0:
                    break;
            }

        }
    }
}