using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineDietitian
{
    public partial class BlogPost : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            string blogpostid = Page.RouteData.Values["id"] as string;
            Label1.Text = blogpostid;
        }
    }
}