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
            if (Session["user"] != null)
                Response.Redirect("~/Default");


        }

        protected void Submit1_Click(object sender, EventArgs e)
        {
            UserE user = new UserE();
            user.AddressID = -1;
            user.UserName = nameBox.Text;
            user.UserSurname = surnameBox.Text;
            user.UserEmail = emailBox.Text;
            user.UserPassword = passwordBox.Text;
            user.UserBirth = DateTime.Parse(birthBox.Text);
            user.UserBodyPhoto = null;


            BusinessLayers.Business.insertUser(user);
            successLabel.Visible = true; // Register success message

        }
    }
}