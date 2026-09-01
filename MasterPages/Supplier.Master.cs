using IndustrialSparePartPortal.App_Code.Constants;
using IndustrialSparePartPortal.App_Code.Helpers;
using System;
using System.Web.UI;

namespace IndustrialSparePartPortal.MasterPages
{
    public partial class SupplierMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!SessionHelper.IsLoggedIn || !string.Equals(SessionHelper.UserRole, RoleConstants.Supplier, StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("~/Account/AccessDenied.aspx", true);
                return;
            }

            if (!IsPostBack)
            {
                lblSupplierName.InnerText = SessionHelper.FullName ?? "Spare-Part Supplier";
                phUnverifiedNotice.Visible = !SessionHelper.IsVerified;
            }
        }
    }
}
