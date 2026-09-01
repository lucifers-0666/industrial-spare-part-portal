using IndustrialSparePartPortal.App_Code.Models;
using System.Data;

namespace IndustrialSparePartPortal.App_Code.Repositories.Interfaces
{
    public interface IUserRepository
    {
        User GetUserByEmail(string email);
        User GetUserById(int userId);
        int CreateUser(User user);
        bool CreateFactoryProfile(FactoryProfile profile);
        bool CreateSupplierProfile(SupplierProfile profile);
        bool CreateTechnicianProfile(TechnicianProfile profile);
        DataTable GetAllUsersWithRoles();
        bool UpdateVerificationStatus(int userId, bool isVerified, string verificationStatus = null);
    }
}
