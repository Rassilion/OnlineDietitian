using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayers;
using Entity;
namespace OnlineDietitian.User
{
    public partial class DietRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             if (Session["user"] == null)
                Response.Redirect("~/Logon.aspx");  
        }

        protected void saveRequest_Click(object sender, EventArgs e)
        {
            DietRequestE dietRequest = new DietRequestE();
            dietRequest.RequestContent = content_textbox.Text;
            dietRequest.Health = false;
            dietRequest.Fitness = false;
            dietRequest.WeightGain = false;
            dietRequest.WeightLoss = false;
            switch (ddlGender.Text)
            {
                case "1":
                    dietRequest.Health = true;
                    break;
                case "2":
                    dietRequest.Fitness = true;
                    break;
                case "3":
                    dietRequest.WeightGain = true;
                    break;
                case "4":
                    dietRequest.WeightLoss = true;
                    break;
              
            }
            int requestID = BusinessLayers.Business.insertDietRequest(dietRequest);

            DietE diet = new DietE();
            diet.DietitianID = Convert.ToInt32(Session["selectedDietitianID"]);
            diet.DietRequestID = requestID;
            diet.UserID = (Session["user"] as Entity.UserE).UserID;

            BusinessLayers.Business.insertDiet(diet);
           
        }

    }
}