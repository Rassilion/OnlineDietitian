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
    public partial class EditMedicalReport : System.Web.UI.Page
    {
        protected Entity.MedicalReportE currentMedicalReport;
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
                    currentMedicalReport = new MedicalReportE();
                    newEntity = true;
                }
                else
                {
                    currentMedicalReport = BusinessLayers.Business.getMedicalReportByID(id);
                    if (currentMedicalReport != null)
                    {
                        if (!Page.IsPostBack)
                        {
                            diseaseBox.Text = currentMedicalReport.Disease;
                            dietitianidBox.Text = currentMedicalReport.DietID.ToString();
                            useridBox.Text = currentMedicalReport.UserID.ToString();
                            drugBox.Text = currentMedicalReport.UsedDrugs;
                            diseaseBox.Text = currentMedicalReport.Disease;
                            heightBox.Text = currentMedicalReport.Height;
                            weightBox.Text = currentMedicalReport.Weight;
                            urineBox.Text = currentMedicalReport.UrineTest;
                            bloodBox.Text = currentMedicalReport.BloodTest;

                            dateBox.Text = currentMedicalReport.Date.ToString("yyyy-MM-dd");
                        }
                    }
                    else
                    {
                        error.Text = "MedicalReport not in the database";
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
            if (currentMedicalReport != null)
            {
                string asd = dateBox.Text;
                currentMedicalReport.Date = DateTime.ParseExact(asd, "yyyy-MM-dd", CultureInfo.CurrentCulture);
                currentMedicalReport.Weight = weightBox.Text;
                currentMedicalReport.Height = heightBox.Text;
                currentMedicalReport.Disease = diseaseBox.Text;
                currentMedicalReport.UsedDrugs = drugBox.Text;
                currentMedicalReport.UrineTest = urineBox.Text;
                currentMedicalReport.BloodTest = bloodBox.Text;

                currentMedicalReport.DietID = Convert.ToInt32(dietitianidBox.Text);
                currentMedicalReport.UserID = Convert.ToInt32(useridBox.Text);

                try
                {
                    if (newEntity)
                    {
                        int id=BusinessLayers.Business.insertMedicalReport(currentMedicalReport);
                        BusinessLayers.Logging.logInsert("MedicalReport", (Session["user"] as Entity.UserE).UserID.ToString(), id.ToString());
                    }
                    else
                    {
                        BusinessLayers.Business.updateMedicalReport(currentMedicalReport);
                        BusinessLayers.Logging.logUpdate("MedicalReport", (Session["user"] as Entity.UserE).UserID.ToString(), currentMedicalReport.ReportID.ToString());
                    }
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