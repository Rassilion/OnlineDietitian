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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToInt32(Session["UserID"]) != -1)
                Response.Redirect("~/Default");


        }

        protected void Submit1_Click(object sender, EventArgs e)
        {
            int controlEmail = BusinessLayers.Business.checkUserEmail(emailBox.Text);
            if (controlEmail != -1)
            {

                successLabel.Text = "This mail already exists";
                successLabel.Visible = true;

            }
            else
            {
                UserE user = new UserE();
                user.AddressID = -1;
                user.UserName = nameBox.Text;
                user.UserSurname = surnameBox.Text;
                user.UserEmail = emailBox.Text;
                user.UserBirth = DateTime.Parse(birthBox.Text);
                user.UserBodyPhoto = null;
                if(passwordBox.Text == passwordConfirmBox.Text) // Same password control
                {
                    user.UserPassword = passwordBox.Text;
                    BusinessLayers.Business.insertUser(user);
                    successLabel.Text = "Success Register";
                    successLabel.Visible = true; // Register success message
                }
                else
                {
                    successLabel.Text = "Passwords are not the same.";
                    successLabel.Visible = true;

                }
                    






            }
            

        }
    }
}