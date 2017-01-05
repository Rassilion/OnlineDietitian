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
    public partial class PatientDetail : System.Web.UI.Page
    {
        protected DietViewE currentDietView;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["dietitian"] == null)
                Response.Redirect("~/Logon.aspx");
            // Get "id" from URL
            string id = Page.RouteData.Values["id"] as string;
            if (id != null)
            {
                currentDietView = BusinessLayers.Business.getDietViewByDietID(id);
                requestContent.Text = currentDietView.RequestContent.ToString();
                health.Text = currentDietView.Health.ToString();
                fitness.Text = currentDietView.Fitness.ToString();
                weightGain.Text = currentDietView.WeightGain.ToString();
                weightLoss.Text = currentDietView.WeightLoss.ToString();

            }

        }
    }
}