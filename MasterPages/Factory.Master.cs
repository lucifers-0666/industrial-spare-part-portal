using IndustrialSparePartPortal.App_Code.Constants;
using IndustrialSparePartPortal.App_Code.Helpers;
using System;
using System.Web.UI;

namespace IndustrialSparePartPortal.MasterPages
{
    public partial class FactoryMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!SessionHelper.IsLoggedIn || !string.Equals(SessionHelper.UserRole, RoleConstants.Factory, StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("~/Account/AccessDenied.aspx", true);
                return;
            }

            if (!IsPostBack)
            {
                lblFactoryName.InnerText = SessionHelper.FullName ?? "Industrial Buyer";
            }
        }
    }
}
