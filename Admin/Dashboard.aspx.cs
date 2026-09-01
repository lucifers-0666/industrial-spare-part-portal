using IndustrialSparePartPortal.App_Code.Helpers;
using IndustrialSparePartPortal.App_Code.Repositories.Implementations;
using IndustrialSparePartPortal.App_Code.Repositories.Interfaces;
using System;
using System.Data;

namespace IndustrialSparePartPortal.Admin
{
    public partial class Dashboard : BasePage
    {
        private readonly IUserRepository _userRepository;

        public Dashboard()
        {
            RequiredRole = IndustrialSparePartPortal.App_Code.Constants.RoleConstants.Administrator;
            _userRepository = new UserRepository();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDashboardData();
            }
        }

        private void LoadDashboardData()
        {
            DataTable dtUsers = _userRepository.GetAllUsersWithRoles();
            gvUsers.DataSource = dtUsers;
            gvUsers.DataBind();

            if (dtUsers != null)
            {
                lblTotalUsers.InnerText = dtUsers.Rows.Count.ToString();
            }
        }
    }
}
