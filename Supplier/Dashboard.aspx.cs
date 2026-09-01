using IndustrialSparePartPortal.App_Code.Constants;
using IndustrialSparePartPortal.App_Code.Helpers;
using System;

namespace IndustrialSparePartPortal.Supplier
{
    public partial class Dashboard : BasePage
    {
        public Dashboard()
        {
            RequiredRole = RoleConstants.Supplier;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblSupplierCompany.InnerText = SessionHelper.FullName ?? "Spare-Part Supplier";
            }
        }
    }
}
