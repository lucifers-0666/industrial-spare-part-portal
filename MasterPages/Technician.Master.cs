using IndustrialSparePartPortal.App_Code.Constants;
using IndustrialSparePartPortal.App_Code.Helpers;
using System;
using System.Web.UI;

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
