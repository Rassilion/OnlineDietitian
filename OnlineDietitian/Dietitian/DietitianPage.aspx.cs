using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineDietitian.Dietitian
{
    public partial class DietitianPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["dietitian"] == null)
                Response.Redirect("~/Logon.aspx");
            userRepeater.DataSource = BusinessLayers.Business.getUsers();
            userRepeater.DataBind();
            //TODO: dietID ile dietisyenin müşterileri yazılacak
        }
        protected void readMore_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            Session["patient"] = BusinessLayers.Business.getUserByID(btn.CommandArgument);
            Session["patientMedicalReport"] = BusinessLayers.Business.getMedicalReportByUserID(btn.CommandArgument);
            Session["patientDietRequest"] = BusinessLayers.Business.getDietRequestByID(BusinessLayers.Business.getRequestIDByUserID(btn.CommandArgument).ToString());
            
            Response.Redirect("~/Dietitian/PatientDetail");
        }

        
    }
}