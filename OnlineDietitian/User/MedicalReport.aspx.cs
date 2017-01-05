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
        protected Entity.MedicalReportE currentDietitian;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["user"] == null)
                Response.Redirect("~/Logon");

            currentDietitian = new Entity.MedicalReportE();
            currentDietitian = BusinessLayers.Business.getMedicalReportByID((Session["user"] as Entity.UserE).UserID.ToString());
            if (currentDietitian != null)
            {
                if (!Page.IsPostBack)
                {
                    height.Text = currentDietitian.Height;
                    weight.Text = currentDietitian.Weight;
                    disease.Text = currentDietitian.Disease;
                    usedDrugs.Text = currentDietitian.UsedDrugs;
                    urineTest.Text = currentDietitian.UrineTest;
                    bloodTest.Text = currentDietitian.BloodTest;
                    
                }
            }
            else
            {
                error.Text = "Dietitian not in the database";
                error.Visible = true;
            }
        }

        protected void saveMedicalReport_Click(object sender, EventArgs e)
        {

            if (currentDietitian != null)
            {
                currentDietitian.UserID = (Session["user"] as Entity.UserE).UserID;
               // currentDietitian.DietID = getDietIDByDietitianAndUserID(Session["selectedDietitianID"], currentDietitian.UserID);
                currentDietitian.Height = height.Text;
                currentDietitian.Weight = weight.Text;
                currentDietitian.Disease = disease.Text;
                currentDietitian.UsedDrugs = usedDrugs.Text;
                currentDietitian.UrineTest = urineTest.Text;
                currentDietitian.BloodTest = bloodTest.Text;
               
                BusinessLayers.Business.updateMedicalReport(currentDietitian);
                error.Text = "Success Save Medical Report";
                error.Visible = true;
            }
        }
            
    }
}