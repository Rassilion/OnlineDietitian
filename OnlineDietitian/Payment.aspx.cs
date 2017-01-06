using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using BusinessLayers;

namespace OnlineDietitian
{
    public partial class Payment : System.Web.UI.Page
    {
        protected int total = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["user"] == null)
            { Response.Redirect("~/Logon.aspx"); }

            paymentRepeater.DataSource = BusinessLayers.Business.getPaymentWithNullByUserID((Session["user"] as Entity.UserE).UserID);
            paymentRepeater.DataBind();

        }
        protected void payment_Click(object sender, EventArgs e)
        {
            successPayment.Text = "Your payment is confirmed";
            successPayment.Visible = true;
            List<PaymentE> list = BusinessLayers.Business.getPaymentWithNullByUserID((Session["user"] as Entity.UserE).UserID);
            foreach (PaymentE p in list){
                p.PayDate = DateTime.Now;
                BusinessLayers.Business.updatePayment(p);
            }

            
        }
        
    }
}