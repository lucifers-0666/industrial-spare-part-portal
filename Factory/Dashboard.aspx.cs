using System;
using IndustrialSparePartPortal.App_Code.Helpers;
using IndustrialSparePartPortal.App_Code.Constants;

namespace IndustrialSparePartPortal.Factory
{
    public partial class Dashboard : BasePage
    {
        public Dashboard()
        {
            RequiredRole = RoleConstants.Factory;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblUserCompany.InnerText = SessionHelper.FullName ?? "Industrial Buyer";
            }
        }
    }
}
