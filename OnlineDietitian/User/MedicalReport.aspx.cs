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
            currentDietitian = new Entity.MedicalReportE();
            currentDietitian = BusinessLayers.Business.getMedicalReportByUserID((Session["user"] as Entity.UserE).UserID);
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
    }
}