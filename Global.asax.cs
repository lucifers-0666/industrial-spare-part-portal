using System;
using System.Web;

namespace IndustrialSparePartPortal
{
    public class Global : HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            // Application Startup initialization
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            // Session defaults initialization
            Session["UserId"] = null;
            Session["UserRole"] = null;
            Session["UserEmail"] = null;
            Session["FullName"] = null;
            Session["IsVerified"] = false;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
        }

        protected void Application_Error(object sender, EventArgs e)
        {
            Exception exc = Server.GetLastError();
            // In production, log application exception details
        }
    }
}
