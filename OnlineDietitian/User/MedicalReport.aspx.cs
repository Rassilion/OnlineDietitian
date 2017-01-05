using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineDietitian.User
{
    public partial class MedicalReport : System.Web.UI.Page
    {
        protected Entity.MedicalReportE currentMedicalReport;
        protected bool flag;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["user"] == null)
                Response.Redirect("~/Logon");
            flag = false;

            currentMedicalReport = BusinessLayers.Business.getMedicalReportByUserID((Session["user"] as Entity.UserE).UserID.ToString());

            if (currentMedicalReport != null)
            {
                if (!Page.IsPostBack)
                {
                    height.Text = currentMedicalReport.Height;
                    weight.Text = currentMedicalReport.Weight;
                    disease.Text = currentMedicalReport.Disease;
                    usedDrugs.Text = currentMedicalReport.UsedDrugs;
                    urineTest.Text = currentMedicalReport.UrineTest;
                    bloodTest.Text = currentMedicalReport.BloodTest;

                }
            }
            else
            {
                currentMedicalReport = new Entity.MedicalReportE();
                error.Text = "Dietitian not in the database";
                error.Visible = true;
                flag = true;
            }
        }

        protected void saveMedicalReport_Click(object sender, EventArgs e)
        {

            if (currentMedicalReport != null)
            {
                currentMedicalReport.UserID = (Session["user"] as Entity.UserE).UserID;
                currentMedicalReport.DietID = (int)Session["dietID"];
                currentMedicalReport.Height = height.Text;
                currentMedicalReport.Weight = weight.Text;
                currentMedicalReport.Disease = disease.Text;
                currentMedicalReport.UsedDrugs = usedDrugs.Text;
                currentMedicalReport.UrineTest = urineTest.Text;
                currentMedicalReport.BloodTest = bloodTest.Text;

                if (flag)
                    BusinessLayers.Business.insertMedicalReport(currentMedicalReport);
                else
                    BusinessLayers.Business.updateMedicalReport(currentMedicalReport);


                error.Text = "Success Save Medical Report";
                error.Visible = true;
            }

        }

    }
}