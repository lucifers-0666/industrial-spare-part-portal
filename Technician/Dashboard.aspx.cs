using IndustrialSparePartPortal.App_Code.Constants;
using IndustrialSparePartPortal.App_Code.Helpers;
using System;

namespace IndustrialSparePartPortal.Technician
{
    public partial class Dashboard : BasePage
    {
        public Dashboard()
        {
            RequiredRole = RoleConstants.Technician;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblTechName.InnerText = SessionHelper.FullName ?? "Service Provider";
            }
        }
    }
}
