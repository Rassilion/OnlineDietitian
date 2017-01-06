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
    public partial class EditPayment : System.Web.UI.Page
    {
        protected Entity.PaymentE currentPayment;
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
                    currentPayment = new PaymentE();
                    newEntity = true;
                }
                else
                {
                    currentPayment = BusinessLayers.Business.getPaymentByID(id);
                    if (currentPayment != null)
                    {
                        if (!Page.IsPostBack)
                        {
                            dietitianidBox.Text = currentPayment.DietitianID.ToString();
                            useridBox.Text = currentPayment.UserID.ToString();
                            paydateBox.Text = currentPayment.PayDate.ToString("yyyy-MM-dd");
                            feeBox.Text = currentPayment.Fee;
                            bankcardBox.Text = currentPayment.BankCard;
                        }
                    }
                    else
                    {
                        error.Text = "Payment not in the database";
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
            if (currentPayment != null)
            {
                string asd = paydateBox.Text;
                currentPayment.PayDate = DateTime.ParseExact(asd, "yyyy-MM-dd", CultureInfo.CurrentCulture);
                currentPayment.DietitianID = Convert.ToInt32(dietitianidBox.Text);
                currentPayment.Fee = feeBox.Text;
                currentPayment.BankCard = bankcardBox.Text;
                currentPayment.UserID = Convert.ToInt32(useridBox.Text);

                try
                {
                    if (newEntity)
                        BusinessLayers.Business.insertPayment(currentPayment);
                    else
                        BusinessLayers.Business.updatePayment(currentPayment);
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