using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineDietitian.User
{
    public partial class UserPage1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            avatar.ImageUrl = "~" + (Session["user"] as Entity.UserE).UserBodyPhoto;

        }
    }
}