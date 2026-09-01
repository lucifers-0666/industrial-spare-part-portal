using IndustrialSparePartPortal.App_Code.Constants;
using IndustrialSparePartPortal.App_Code.Helpers;
using System;
using System.Web.UI;

namespace IndustrialSparePartPortal.MasterPages
{
    public partial class AdminMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Verify Administrator Authorization
            if (!SessionHelper.IsLoggedIn || !string.Equals(SessionHelper.UserRole, RoleConstants.Administrator, StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("~/Account/AccessDenied.aspx", true);
                return;
            }

            if (!IsPostBack)
            {
                lblAdminName.InnerText = SessionHelper.FullName ?? "Administrator";
            }
        }
    }
}
