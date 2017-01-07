using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineDietitian.AdminPage
{
    public partial class EditDietitian : System.Web.UI.Page
    {
        protected Entity.DietitianE currentDietitian;
        protected bool newEntity = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            // Get "id" from URL
            string id = Page.RouteData.Values["id"] as string;
            if (id != null)
            {

                if (id == "new")
                {
                    currentDietitian = new Entity.DietitianE();
                    newEntity = true;
                }
                else
                {
                    currentDietitian = BusinessLayers.Business.getDietitianByDietitianID(id);
                    if (currentDietitian != null)
                    {
                        if (!Page.IsPostBack)
                        {
                            addressBox.Text = currentDietitian.Address;
                            cvBox.Text = currentDietitian.CV;
                            licenseBox.Text = currentDietitian.DietitianLicense;
                            nameBox.Text = currentDietitian.DietitianName;
                            surnameBox.Text = currentDietitian.DietitianSurname;
                            changePasswordBox.Text = currentDietitian.DietitianPassword;
                            phoneBox.Text = currentDietitian.DietitianPhone;
                            emailBox.Text = currentDietitian.DietitianEmail;
                            //TODO gender
                        }
                    }
                    else
                    {
                        error.Text = "Dietitian not in the database";
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
            if (currentDietitian != null)
            {
                currentDietitian.DietitianLicense = licenseBox.Text;
                currentDietitian.Address = addressBox.Text;
                currentDietitian.CV = cvBox.Text;
                currentDietitian.DietitianName = nameBox.Text;
                currentDietitian.DietitianSurname = surnameBox.Text;
                currentDietitian.DietitianPhone = phoneBox.Text;
                currentDietitian.Gender = ddlGender.Text;
                if (Util.isMD5(changePasswordBox.Text))
                    currentDietitian.DietitianPassword = changePasswordBox.Text;
                else
                    currentDietitian.DietitianPassword = Util.MD5hash(changePasswordBox.Text);
                currentDietitian.DietitianEmail = emailBox.Text;

                try
                {

                    if (newEntity)
                    {
                        int id=BusinessLayers.Business.insertDietitian(currentDietitian);
                        BusinessLayers.Logging.logInsert("Dietitian", (Session["user"] as Entity.UserE).UserID.ToString(), id.ToString());
                    }
                    else
                    {
                        BusinessLayers.Business.updateDietitian(currentDietitian);
                        BusinessLayers.Logging.logUpdate("Dietitian", (Session["user"] as Entity.UserE).UserID.ToString(), currentDietitian.DietitianID.ToString());

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