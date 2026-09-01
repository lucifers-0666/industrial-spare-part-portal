using IndustrialSparePartPortal.App_Code.Helpers;
using IndustrialSparePartPortal.App_Code.Models;
using IndustrialSparePartPortal.App_Code.Services.Implementations;
using IndustrialSparePartPortal.App_Code.Services.Interfaces;
using System;
using System.Web.UI;

namespace IndustrialSparePartPortal.Account
{
    public partial class Login : Page
    {
        private readonly IAuthService _authService;

        public Login()
        {
            _authService = new AuthService();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (SessionHelper.IsLoggedIn)
            {
                Response.Redirect(SessionHelper.GetDashboardUrlByRole(SessionHelper.UserRole));
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();
            string errorMessage;
            User user;

            if (_authService.Login(email, password, out errorMessage, out user))
            {
                string returnUrl = Request.QueryString["returnUrl"];
                if (!string.IsNullOrEmpty(returnUrl))
                {
                    Response.Redirect(Server.UrlDecode(returnUrl));
                }
                else
                {
                    Response.Redirect(SessionHelper.GetDashboardUrlByRole(user.RoleName));
                }
            }
            else
            {
                pnlAlert.Visible = true;
                litAlertMessage.Text = errorMessage;
            }
        }
    }
}
