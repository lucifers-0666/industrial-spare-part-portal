using System;
using System.Web.UI;
using IndustrialSparePartPortal.App_Code.Helpers;

namespace IndustrialSparePartPortal.Account
{
    public partial class AccessDenied : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (SessionHelper.IsLoggedIn)
            {
                btnDashboard.HRef = SessionHelper.GetDashboardUrlByRole(SessionHelper.UserRole);
            }
            else
            {
                btnDashboard.HRef = "~/Account/Login.aspx";
            }
        }
    }
}
