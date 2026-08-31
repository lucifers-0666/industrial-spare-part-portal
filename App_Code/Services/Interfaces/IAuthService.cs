using IndustrialSparePartPortal.App_Code.Models;

namespace IndustrialSparePartPortal.App_Code.Services.Interfaces
{
    public interface IAuthService
    {
        bool Login(string email, string password, out string errorMessage, out User user);
        bool RegisterFactory(User user, FactoryProfile factory, string plainPassword, out string errorMessage);
        bool RegisterSupplier(User user, SupplierProfile supplier, string plainPassword, out string errorMessage);
        bool RegisterTechnician(User user, TechnicianProfile technician, string plainPassword, out string errorMessage);
    }
}
