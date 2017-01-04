using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using BusinessLayers;
namespace OnlineDietitian.User
{
    public partial class MoreInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
                Response.Redirect("~/Logon.aspx");
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {

            UserE user = Session["user"] as UserE;
                
                user.UserName = nameBox.Text;
                user.UserSurname = surnameBox.Text;
                user.Address = addressBox.Text;
                user.UserPhone = phoneBox.Text;
                user.UserBodyPhoto = bodyPhotoBox.Text;
                user.Gender = ddlGender.Text;
                
                if (changePasswordBox.Text == confirmBox.Text) // Same password control
                {
                    user.UserPassword = changePasswordBox.Text;
                    BusinessLayers.Business.updateUser(user);

                // user.UserBirth = DateTime.Parse(.Text);
                successLabel.Text = "Success save";
                successLabel.Visible = true;
                 }
                else
                {
                    successLabel.Text = "Passwords are not the same.";
                    successLabel.Visible = true;

                }
            



        }
    }
}