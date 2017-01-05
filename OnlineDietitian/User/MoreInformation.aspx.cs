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
            UserE currentUser = Session["user"] as UserE;
            if (!Page.IsPostBack)
            {
                addressBox.Text = currentUser.Address;
                nameBox.Text = currentUser.UserName;
                surnameBox.Text = currentUser.UserSurname;
                phoneBox.Text = currentUser.UserPhone;
                birthBox.Text = currentUser.UserBirth.ToString("yyyy-MM-dd");
                //TODO gender
            }
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            if (changePasswordBox.Text == confirmBox.Text) // Same password control
            {
                UserE user = Session["user"] as UserE;
                string path = "/img/NoUser.jpg";
                string fileName = avatarUpload.PostedFile.FileName;
                if (fileName != "")
                {
                    path = "/img/" + user.UserID.ToString() + "-" + fileName;
                    string tmp = Server.MapPath(path);
                    avatarUpload.PostedFile.SaveAs(tmp);
                }
                user.UserName = nameBox.Text;
                user.UserSurname = surnameBox.Text;
                user.Address = addressBox.Text;
                user.UserPhone = phoneBox.Text;
                user.UserBodyPhoto = path;
                user.Gender = ddlGender.Text;


                user.UserPassword = Util.MD5hash(changePasswordBox.Text);
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