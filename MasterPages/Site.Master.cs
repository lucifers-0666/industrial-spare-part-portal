using IndustrialSparePartPortal.App_Code.Helpers;
using System;
using System.Web.UI;

namespace IndustrialSparePartPortal.MasterPages
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
        }
    }
}
