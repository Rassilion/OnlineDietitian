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
 
            }
        }
        protected void sendDiet_Click(object sender, EventArgs e)
        {
            DietE diet = new DietE();
            diet.DietitianID = currentDietView.DietitianID;
            diet.DietID = currentDietView.DietID;
            diet.DietRequestID = currentDietView.RequestID;
            diet.UserID = currentDietView.UserID;
            diet.DietContent = dietContent_textbox.Text;
            BusinessLayers.Business.updateDiet(diet);

            PaymentE pay = new PaymentE();
            pay.DietitianID = currentDietView.DietitianID;
            pay.UserID = currentDietView.UserID;
            pay.Fee = "30";

            BusinessLayers.Business.insertPayment(pay);

        }
        
    }
}