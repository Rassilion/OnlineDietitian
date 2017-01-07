using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineDietitian.AdminPage
{
    public partial class EditDietRequest : System.Web.UI.Page
    {
        protected Entity.DietRequestE currentDietRequest;
        protected bool newEntity = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            // Get "id" from URL
            string id = Page.RouteData.Values["id"] as string;
            if (id != null)
            {

                if (id == "new")
                {
                    currentDietRequest = new Entity.DietRequestE();
                    newEntity = true;
                }
                else
                {
                    currentDietRequest = BusinessLayers.Business.getDietRequestByID(id);
                    if (currentDietRequest != null)
                    {
                        if (!Page.IsPostBack)
                        {
                            contentBox.Text = currentDietRequest.RequestContent;
                            healthBox.Text = currentDietRequest.Health.ToString();
                            fitnessBox.Text = currentDietRequest.Fitness.ToString();
                            lossBox.Text = currentDietRequest.WeightLoss.ToString();
                            gainBox.Text = currentDietRequest.WeightGain.ToString();
                        }
                    }
                    else
                    {
                        error.Text = "DietRequest not in the database";
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
            if (currentDietRequest != null)
            {
                currentDietRequest.RequestContent = contentBox.Text;
                currentDietRequest.Health = Convert.ToBoolean(healthBox.Text);
                currentDietRequest.Fitness = Convert.ToBoolean(fitnessBox.Text);
                currentDietRequest.WeightGain = Convert.ToBoolean(gainBox.Text);
                currentDietRequest.WeightLoss = Convert.ToBoolean(lossBox.Text);

                try
                {

                    if (newEntity)
                    {
                        int id=BusinessLayers.Business.insertDietRequest(currentDietRequest);
                        BusinessLayers.Logging.logInsert("DietRequest", (Session["user"] as Entity.UserE).UserID.ToString(), id.ToString());
                    }
                    else
                    {
                        BusinessLayers.Business.updateDietRequest(currentDietRequest);
                        BusinessLayers.Logging.logUpdate("DietRequest", (Session["user"] as Entity.UserE).UserID.ToString(), currentDietRequest.RequestID.ToString());
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