using System;
using System.Web.UI;
using IndustrialSparePartPortal.App_Code.Helpers;
using IndustrialSparePartPortal.App_Code.Models;
using IndustrialSparePartPortal.App_Code.Services.Implementations;
using IndustrialSparePartPortal.App_Code.Services.Interfaces;

namespace IndustrialSparePartPortal.Account
{
    public partial class Register : Page
    {
        private readonly IAuthService _authService;

        public Register()
        {
            _authService = new AuthService();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string roleParam = Request.QueryString["role"];
                if (string.Equals(roleParam, "supplier", StringComparison.OrdinalIgnoreCase))
                {
                    rdoSupplier.Checked = true;
                    rdoFactory.Checked = false;
                    rdoTechnician.Checked = false;
                }
                else if (string.Equals(roleParam, "technician", StringComparison.OrdinalIgnoreCase))
                {
                    rdoTechnician.Checked = true;
                    rdoFactory.Checked = false;
                    rdoSupplier.Checked = false;
                }
                UpdatePanelVisibility();
            }
        }

        protected void Role_CheckedChanged(object sender, EventArgs e)
        {
            UpdatePanelVisibility();
        }

        private void UpdatePanelVisibility()
        {
            pnlFactoryFields.Visible = rdoFactory.Checked;
            pnlSupplierFields.Visible = rdoSupplier.Checked;
            pnlTechnicianFields.Visible = rdoTechnician.Checked;
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            User user = new User
            {
                FullName = txtFullName.Text.Trim(),
                Email = txtEmail.Text.Trim(),
                PhoneNumber = txtPhone.Text.Trim()
            };

            string password = txtPassword.Text.Trim();
            bool success = false;
            string errorMessage = string.Empty;

            if (rdoFactory.Checked)
            {
                FactoryProfile factory = new FactoryProfile
                {
                    CompanyName = txtFactoryCompany.Text.Trim(),
                    IndustryType = txtIndustryType.Text.Trim(),
                    City = txtFactoryCity.Text.Trim(),
                    State = txtFactoryState.Text.Trim(),
                    Gstin = txtFactoryGstin.Text.Trim(),
                    ContactPerson = txtFullName.Text.Trim()
                };
                success = _authService.RegisterFactory(user, factory, password, out errorMessage);
            }
            else if (rdoSupplier.Checked)
            {
                SupplierProfile supplier = new SupplierProfile
                {
                    CompanyName = txtSupplierCompany.Text.Trim(),
                    BusinessRegistrationNo = txtRegNo.Text.Trim(),
                    City = txtSupplierCity.Text.Trim(),
                    State = txtSupplierState.Text.Trim(),
                    Gstin = txtSupplierGstin.Text.Trim()
                };
                success = _authService.RegisterSupplier(user, supplier, password, out errorMessage);
            }
            else if (rdoTechnician.Checked)
            {
                TechnicianProfile technician = new TechnicianProfile
                {
                    SkillSummary = txtSkills.Text.Trim(),
                    ExperienceYears = int.TryParse(txtExperience.Text.Trim(), out int exp) ? exp : 0,
                    HourlyRate = decimal.TryParse(txtHourlyRate.Text.Trim(), out decimal rate) ? rate : 0,
                    City = txtTechCity.Text.Trim()
                };
                success = _authService.RegisterTechnician(user, technician, password, out errorMessage);
            }

            if (success)
            {
                string loginErr;
                User loggedInUser;
                // Auto-login or redirect to login page with success notification
                if (_authService.Login(user.Email, password, out loginErr, out loggedInUser))
                {
                    Response.Redirect(SessionHelper.GetDashboardUrlByRole(loggedInUser.RoleName));
                }
                else
                {
                    Response.Redirect("~/Account/Login.aspx?registered=true");
                }
            }
            else
            {
                pnlAlert.Visible = true;
                pnlAlert.CssClass = "mb-6 p-4 rounded-lg bg-red-50 border border-red-200 text-red-700 text-xs flex items-center gap-2";
                litAlertMessage.Text = errorMessage;
            }
        }
    }
}
