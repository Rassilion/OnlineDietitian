using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using BusinessLayers;
using System.Threading;

namespace OnlineDietitian
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
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
                user.UserName = nameBox.Text;
                user.UserSurname = surnameBox.Text;
                user.UserEmail = emailBox.Text;
                user.UserBirth = DateTime.Parse(birthBox.Text);

                if(passwordBox.Text == passwordConfirmBox.Text) // Same password control
                {
                    user.UserPassword = passwordBox.Text;
                    BusinessLayers.Business.insertUser(user);
                    successLabel.Text = "Success Register";
                    successLabel.Visible = true; // Register success message

                    Response.AddHeader("REFRESH", "2;URL=Default.aspx"); // Waiting 2 second 
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