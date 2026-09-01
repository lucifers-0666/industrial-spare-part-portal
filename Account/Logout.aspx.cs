using IndustrialSparePartPortal.App_Code.Helpers;
using System;
using System.Web.UI;

namespace IndustrialSparePartPortal.Account
{
    public partial class Logout : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SessionHelper.Logout();
            Response.Redirect("~/Account/Login.aspx?logout=true");
        }
    }
}
