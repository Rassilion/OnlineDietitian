using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using System.Globalization;

namespace OnlineDietitian.AdminPage
{
    public partial class EditUser : System.Web.UI.Page
    {
        protected Entity.UserE currentUser;
        protected void Page_Load(object sender, EventArgs e)
        {
            // Get "id" from URL
            string userid = Page.RouteData.Values["id"] as string;
            if (userid != null)
            {
                currentUser = BusinessLayers.Business.getUserByID(userid);
                if (!Page.IsPostBack)
                {
                    addressBox.Text = currentUser.Address;
                    bodyPhotoBox.Text = currentUser.UserBodyPhoto;
                    nameBox.Text = currentUser.UserName;
                    surnameBox.Text = currentUser.UserSurname;
                    changePasswordBox.Text = currentUser.UserPassword;
                    phoneBox.Text = currentUser.UserPhone;
                    birthBox.Text = currentUser.UserBirth.ToString("yyyy-MM-dd");
                    emailBox.Text = currentUser.UserEmail;
                    //TODO gender
                }

            }

        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            if (currentUser != null)
            {
                string asd = birthBox.Text;
                currentUser.UserBirth = DateTime.ParseExact(asd, "yyyy-MM-dd", CultureInfo.CurrentCulture);
                currentUser.Address = addressBox.Text;
                currentUser.UserBodyPhoto = bodyPhotoBox.Text;
                currentUser.UserName = nameBox.Text;
                currentUser.UserSurname = surnameBox.Text;
                currentUser.UserPhone = phoneBox.Text;
                currentUser.UserPassword = changePasswordBox.Text;
                currentUser.UserEmail = emailBox.Text;
                //TODO gender

                BusinessLayers.Business.updateUser(currentUser);
                Response.Redirect(Request.RawUrl);
            }
        }
    }
}