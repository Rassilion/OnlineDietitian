using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace OnlineDietitian
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.MapPageRoute("BlogPostRoute", "BlogPost/{id}", "~/BlogPost.aspx");
            routes.MapPageRoute("EditUserRoute", "AdminPage/EditUser/{id}", "~/AdminPage/EditUser.aspx");
            var settings = new FriendlyUrlSettings();
            settings.AutoRedirectMode = RedirectMode.Permanent;
            routes.EnableFriendlyUrls(settings);
            
        }
    }
}
