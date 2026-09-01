using IndustrialSparePartPortal.App_Code.Helpers;
using IndustrialSparePartPortal.App_Code.Models;
using IndustrialSparePartPortal.App_Code.Repositories.Implementations;
using IndustrialSparePartPortal.App_Code.Repositories.Interfaces;
using IndustrialSparePartPortal.App_Code.Services.Interfaces;

namespace IndustrialSparePartPortal.App_Code.Services.Implementations
{
    public class AuthService : IAuthService
    {
        private readonly IUserRepository _userRepository;

        public AuthService()
        {
            _userRepository = new UserRepository();
        }

        public AuthService(IUserRepository userRepository)
        {
            _userRepository = userRepository;
        }

        public bool Login(string email, string password, out string errorMessage, out User user)
        {
            errorMessage = string.Empty;
            user = null;

            if (string.IsNullOrWhiteSpace(email) || string.IsNullOrWhiteSpace(password))
            {
                errorMessage = "Please provide both email address and password.";
                return false;
            }

            user = _userRepository.GetUserByEmail(email.Trim());
            if (user == null)
            {
                errorMessage = "Invalid email address or password.";
                return false;
            }

            if (!user.IsActive)
            {
                errorMessage = "Your account has been deactivated. Please contact administrator support.";
                return false;
            }

            bool isValidPassword = PasswordHasher.VerifyPassword(password, user.PasswordHash, user.Salt);
            if (!isValidPassword)
            {
                errorMessage = "Invalid email address or password.";
                return false;
            }

            // Set User Session
            SessionHelper.UserId = user.UserId;
            SessionHelper.UserRole = user.RoleName;
            SessionHelper.UserEmail = user.Email;
            SessionHelper.FullName = user.FullName;
            SessionHelper.IsVerified = user.IsVerified;

            return true;
        }

        public bool RegisterFactory(User user, FactoryProfile factory, string plainPassword, out string errorMessage)
        {
            errorMessage = string.Empty;

            if (!ValidateUserRegistration(user, plainPassword, out errorMessage))
            {
                return false;
            }

            user.RoleId = 2; // Factory RoleId
            user.IsActive = true;
            user.IsVerified = true; // Auto-verify Factory or set based on policy

            user.Salt = PasswordHasher.GenerateSalt();
            user.PasswordHash = PasswordHasher.HashPassword(plainPassword, user.Salt);

            int userId = _userRepository.CreateUser(user);
            if (userId <= 0)
            {
                errorMessage = "Failed to create user account. Please try again.";
                return false;
            }

            factory.UserId = userId;
            bool profileCreated = _userRepository.CreateFactoryProfile(factory);

            if (!profileCreated)
            {
                errorMessage = "Account created but failed to save company profile details.";
                return false;
            }

            return true;
        }

        public bool RegisterSupplier(User user, SupplierProfile supplier, string plainPassword, out string errorMessage)
        {
            errorMessage = string.Empty;

            if (!ValidateUserRegistration(user, plainPassword, out errorMessage))
            {
                return false;
            }

            user.RoleId = 3; // Supplier RoleId
            user.IsActive = true;
            user.IsVerified = false; // Requires admin verification

            user.Salt = PasswordHasher.GenerateSalt();
            user.PasswordHash = PasswordHasher.HashPassword(plainPassword, user.Salt);

            int userId = _userRepository.CreateUser(user);
            if (userId <= 0)
            {
                errorMessage = "Failed to create user account. Please try again.";
                return false;
            }

            supplier.UserId = userId;
            supplier.VerificationStatus = "Pending";
            supplier.Rating = 0;

            bool profileCreated = _userRepository.CreateSupplierProfile(supplier);
            if (!profileCreated)
            {
                errorMessage = "Account created but failed to save supplier profile details.";
                return false;
            }

            return true;
        }

        public bool RegisterTechnician(User user, TechnicianProfile technician, string plainPassword, out string errorMessage)
        {
            errorMessage = string.Empty;

            if (!ValidateUserRegistration(user, plainPassword, out errorMessage))
            {
                return false;
            }

            user.RoleId = 4; // Technician RoleId
            user.IsActive = true;
            user.IsVerified = false; // Requires admin verification

            user.Salt = PasswordHasher.GenerateSalt();
            user.PasswordHash = PasswordHasher.HashPassword(plainPassword, user.Salt);

            int userId = _userRepository.CreateUser(user);
            if (userId <= 0)
            {
                errorMessage = "Failed to create user account. Please try again.";
                return false;
            }

            technician.UserId = userId;
            technician.VerificationStatus = "Pending";
            technician.IsAvailable = true;

            bool profileCreated = _userRepository.CreateTechnicianProfile(technician);
            if (!profileCreated)
            {
                errorMessage = "Account created but failed to save technician profile details.";
                return false;
            }

            return true;
        }

        private bool ValidateUserRegistration(User user, string plainPassword, out string errorMessage)
        {
            errorMessage = string.Empty;

            if (user == null || string.IsNullOrWhiteSpace(user.Email) || string.IsNullOrWhiteSpace(plainPassword))
            {
                errorMessage = "Email address and password are required fields.";
                return false;
            }

            if (plainPassword.Length < 6)
            {
                errorMessage = "Password must be at least 6 characters long.";
                return false;
            }

            User existingUser = _userRepository.GetUserByEmail(user.Email.Trim());
            if (existingUser != null)
            {
                errorMessage = "An account with this email address already exists.";
                return false;
            }

            return true;
        }
    }
}
