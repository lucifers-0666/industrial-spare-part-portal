using IndustrialSparePartPortal.App_Code.Helpers;
using System;
using System.Web.UI;

namespace IndustrialSparePartPortal.MasterPages
{
    public partial class SiteMaster : MasterPage
    {
        public bool ShowEmergencyBanner
        {
            get => phPreFooterEmergency != null && phPreFooterEmergency.Visible;
            set { if (phPreFooterEmergency != null) phPreFooterEmergency.Visible = value; }
        }

        public string ActiveNavKey { get; private set; } = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            // Authenticated vs Anonymous header action states
            if (SessionHelper.IsLoggedIn)
            {
                phAnonymous.Visible = false;
                phAuthenticated.Visible = true;
                lnkDashboard.HRef = SessionHelper.GetDashboardUrlByRole(SessionHelper.UserRole);
            }
            else
            {
                phAnonymous.Visible = true;
                phAuthenticated.Visible = false;
            }

            // Route-aware active navigation resolution
            string appPath = Request.AppRelativeCurrentExecutionFilePath ?? string.Empty;
            string rawUrl = Request.Url?.AbsolutePath ?? string.Empty;

            if (appPath.IndexOf("Default.aspx", StringComparison.OrdinalIgnoreCase) >= 0 || appPath == "~/")
            {
                ActiveNavKey = "home";
            }
            else if (appPath.IndexOf("Parts.aspx", StringComparison.OrdinalIgnoreCase) >= 0)
            {
                ActiveNavKey = "parts";
            }
            else if (appPath.IndexOf("Suppliers.aspx", StringComparison.OrdinalIgnoreCase) >= 0)
            {
                ActiveNavKey = "suppliers";
            }
            else if (appPath.IndexOf("Technicians.aspx", StringComparison.OrdinalIgnoreCase) >= 0)
            {
                ActiveNavKey = "technicians";
            }
            else if (appPath.IndexOf("HowItWorks.aspx", StringComparison.OrdinalIgnoreCase) >= 0)
            {
                ActiveNavKey = "howitworks";
            }
            else if (appPath.IndexOf("WhyUs.aspx", StringComparison.OrdinalIgnoreCase) >= 0)
            {
                ActiveNavKey = "whyus";
            }
            else if (appPath.IndexOf("Emergency.aspx", StringComparison.OrdinalIgnoreCase) >= 0)
            {
                ActiveNavKey = "emergency";
            }
            else if (appPath.IndexOf("Login.aspx", StringComparison.OrdinalIgnoreCase) >= 0)
            {
                ActiveNavKey = "login";
            }
            else if (appPath.IndexOf("Register.aspx", StringComparison.OrdinalIgnoreCase) >= 0)
            {
                ActiveNavKey = "register";
            }
            else
            {
                ActiveNavKey = string.Empty;
            }

            // Contextual Pre-Footer Emergency Callout display logic
            // Only show on Homepage and Why Us where it adds high-level procurement context.
            // Suppress on Login, Register, Emergency (already on emergency page), and Parts (has its own dedicated callout).
            if (phPreFooterEmergency != null)
            {
                phPreFooterEmergency.Visible = (ActiveNavKey == "home" || ActiveNavKey == "whyus");
            }
        }
    }
}
