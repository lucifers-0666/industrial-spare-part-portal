using System;
using System.Web.UI;
using IndustrialSparePartPortal.App_Code.Constants;
using IndustrialSparePartPortal.App_Code.Helpers;

namespace IndustrialSparePartPortal.Public
{
    public partial class Emergency : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string redirect = Request.QueryString["redirect"];
                if (redirect == "emergency")
                {
                    pnlNotice.Visible = true;
                }
            }
        }

        protected void btnSubmitEmergency_Click(object sender, EventArgs e)
        {
            // Validate required fields
            if (string.IsNullOrWhiteSpace(txtMachineName.Text) || string.IsNullOrWhiteSpace(txtPartNumber.Text))
            {
                pnlNotice.Visible = true;
                return;
            }

            // Check if visitor is logged in as Factory
            if (SessionHelper.IsLoggedIn)
            {
                if (SessionHelper.UserRole == RoleConstants.Factory)
                {
                    Response.Redirect("~/Factory/Dashboard.aspx?msg=emergency_submitted");
                }
                else
                {
                    Response.Redirect("~/Account/AccessDenied.aspx");
                }
            }
            else
            {
                // Redirect to Login with returnUrl and emergency flag
                string returnUrl = Server.UrlEncode("~/Public/Emergency.aspx?redirect=emergency");
                Response.Redirect($"~/Account/Login.aspx?returnUrl={returnUrl}");
            }
        }
    }
}
