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
            routes.MapPageRoute("admin","AdminPage", "~/AdminPage/Default.aspx");
            routes.MapPageRoute("EditUserRoute", "AdminPage/EditUser/{id}", "~/AdminPage/EditUser.aspx");
            routes.MapPageRoute("EditDietitianRoute", "AdminPage/EditDietitian/{id}", "~/AdminPage/EditDietitian.aspx");
            routes.MapPageRoute("EditDietRequestRoute", "AdminPage/EditDietRequest/{id}", "~/AdminPage/EditDietRequest.aspx");
            routes.MapPageRoute("EditAppointmentRoute", "AdminPage/EditAppointment/{id}", "~/AdminPage/EditAppointment.aspx");
            routes.MapPageRoute("EditDietRoute", "AdminPage/EditDiet/{id}", "~/AdminPage/EditDiet.aspx");
            routes.MapPageRoute("EditMedicalRoute", "AdminPage/EditMedicalReport/{id}", "~/AdminPage/EditMedicalReport.aspx");
            routes.MapPageRoute("EditPaymentRoute", "AdminPage/EditPayment/{id}", "~/AdminPage/EditPayment.aspx");
            routes.MapPageRoute("EditBlogPostRoute", "AdminPage/EditBlogPost/{id}", "~/AdminPage/EditBlogPost.aspx");
            routes.MapPageRoute("patiandetail", "Dietitian/PatientDetail/{id}", "~/Dietitian/PatientDetail.aspx");
            routes.MapPageRoute("dietFollowUp", "User/DietsDetail/{id}", "~/User/DietsDetail.aspx");
            var settings = new FriendlyUrlSettings();
            settings.AutoRedirectMode = RedirectMode.Permanent;
            routes.EnableFriendlyUrls(settings);
            
        }
    }
}
