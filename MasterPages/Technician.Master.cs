using System;
using System.Web.UI;
using IndustrialSparePartPortal.App_Code.Helpers;
using IndustrialSparePartPortal.App_Code.Constants;

namespace IndustrialSparePartPortal.MasterPages
{
    public partial class TechnicianMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!SessionHelper.IsLoggedIn || !string.Equals(SessionHelper.UserRole, RoleConstants.Technician, StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("~/Account/AccessDenied.aspx", true);
                return;
            }

            if (!IsPostBack)
            {
                lblTechName.InnerText = SessionHelper.FullName ?? "Service Provider";
            }
        }
    }
}
