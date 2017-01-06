using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using System.Globalization;
using System.Data.SqlClient;

namespace OnlineDietitian.AdminPage
{
    public partial class EditUser : System.Web.UI.Page
    {
        protected Entity.UserE currentUser;
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
                    currentUser = new UserE();
                    newEntity = true;
                }
                else
                {
                    currentUser = BusinessLayers.Business.getUserByID(id);
                    if (currentUser != null)
                    {
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
                    else
                    {
                        error.Text = "User not in the database";
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
            if (currentUser != null)
            {
                string asd = birthBox.Text;
                currentUser.UserBirth = DateTime.ParseExact(asd, "yyyy-MM-dd", CultureInfo.CurrentCulture);
                currentUser.Address = addressBox.Text;
                currentUser.UserBodyPhoto = bodyPhotoBox.Text;
                currentUser.UserName = nameBox.Text;
                currentUser.UserSurname = surnameBox.Text;
                currentUser.UserPhone = phoneBox.Text;
                if (Util.isMD5(changePasswordBox.Text))
                    currentUser.UserPassword = changePasswordBox.Text;
                else
                    currentUser.UserPassword = Util.MD5hash(changePasswordBox.Text);
                currentUser.UserEmail = emailBox.Text;
                //TODO gender

                try
                {
                    if (newEntity)
                        BusinessLayers.Business.insertUser(currentUser);
                    else
                        BusinessLayers.Business.updateUser(currentUser);
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