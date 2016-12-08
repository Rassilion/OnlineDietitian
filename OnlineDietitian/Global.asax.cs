using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace OnlineDietitian
{
    public class Global : HttpApplication
    {
        // If users is not login, they are not see include of website
        public static int userID; 

        void Application_Start(object sender, EventArgs e)
        {
            userID = -1;
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
    }
}