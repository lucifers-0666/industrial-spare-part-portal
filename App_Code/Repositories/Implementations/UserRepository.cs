using System;
using System.Data;
using System.Data.SqlClient;
using IndustrialSparePartPortal.App_Code.Database;
using IndustrialSparePartPortal.App_Code.Models;
using IndustrialSparePartPortal.App_Code.Repositories.Interfaces;

namespace IndustrialSparePartPortal.App_Code.Repositories.Implementations
{
    public class UserRepository : IUserRepository
    {
        public User GetUserByEmail(string email)
        {
            string sql = @"
                SELECT u.UserId, u.RoleId, r.RoleName, u.Email, u.PasswordHash, u.Salt, 
                       u.FullName, u.PhoneNumber, u.IsActive, u.IsVerified, u.CreatedAt
                FROM Users u
                INNER JOIN Roles r ON u.RoleId = r.RoleId
                WHERE u.Email = @Email";

            SqlParameter[] parameters = { new SqlParameter("@Email", SqlDbType.VarChar, 100) { Value = email } };
            DataRow row = DbFactory.ExecuteSingleRow(sql, parameters);

            if (row != null)
            {
                return MapDataRowToUser(row);
            }
            return null;
        }

        public User GetUserById(int userId)
        {
            string sql = @"
                SELECT u.UserId, u.RoleId, r.RoleName, u.Email, u.PasswordHash, u.Salt, 
                       u.FullName, u.PhoneNumber, u.IsActive, u.IsVerified, u.CreatedAt
                FROM Users u
                INNER JOIN Roles r ON u.RoleId = r.RoleId
                WHERE u.UserId = @UserId";

            SqlParameter[] parameters = { new SqlParameter("@UserId", SqlDbType.Int) { Value = userId } };
            DataRow row = DbFactory.ExecuteSingleRow(sql, parameters);

            if (row != null)
            {
                return MapDataRowToUser(row);
            }
            return null;
        }

        public int CreateUser(User user)
        {
            string sql = @"
                INSERT INTO Users (RoleId, Email, PasswordHash, Salt, FullName, PhoneNumber, IsActive, IsVerified, CreatedAt)
                VALUES (@RoleId, @Email, @PasswordHash, @Salt, @FullName, @PhoneNumber, @IsActive, @IsVerified, GETDATE());
                SELECT SCOPE_IDENTITY();";

            SqlParameter[] parameters = {
                new SqlParameter("@RoleId", SqlDbType.Int) { Value = user.RoleId },
                new SqlParameter("@Email", SqlDbType.VarChar, 100) { Value = user.Email },
                new SqlParameter("@PasswordHash", SqlDbType.VarChar, 255) { Value = user.PasswordHash },
                new SqlParameter("@Salt", SqlDbType.VarChar, 100) { Value = user.Salt },
                new SqlParameter("@FullName", SqlDbType.NVarChar, 100) { Value = user.FullName },
                new SqlParameter("@PhoneNumber", SqlDbType.VarChar, 20) { Value = (object)user.PhoneNumber ?? DBNull.Value },
                new SqlParameter("@IsActive", SqlDbType.Bit) { Value = user.IsActive },
                new SqlParameter("@IsVerified", SqlDbType.Bit) { Value = user.IsVerified }
            };

            object result = DbFactory.ExecuteScalar(sql, parameters);
            return Convert.ToInt32(result);
        }

        public bool CreateFactoryProfile(FactoryProfile profile)
        {
            string sql = @"
                INSERT INTO Factories (UserId, CompanyName, IndustryType, Address, City, State, Pincode, Gstin, ContactPerson, CreatedAt)
                VALUES (@UserId, @CompanyName, @IndustryType, @Address, @City, @State, @Pincode, @Gstin, @ContactPerson, GETDATE())";

            SqlParameter[] parameters = {
                new SqlParameter("@UserId", SqlDbType.Int) { Value = profile.UserId },
                new SqlParameter("@CompanyName", SqlDbType.NVarChar, 150) { Value = profile.CompanyName },
                new SqlParameter("@IndustryType", SqlDbType.NVarChar, 100) { Value = (object)profile.IndustryType ?? DBNull.Value },
                new SqlParameter("@Address", SqlDbType.NVarChar, 255) { Value = (object)profile.Address ?? DBNull.Value },
                new SqlParameter("@City", SqlDbType.NVarChar, 50) { Value = (object)profile.City ?? DBNull.Value },
                new SqlParameter("@State", SqlDbType.NVarChar, 50) { Value = (object)profile.State ?? DBNull.Value },
                new SqlParameter("@Pincode", SqlDbType.VarChar, 10) { Value = (object)profile.Pincode ?? DBNull.Value },
                new SqlParameter("@Gstin", SqlDbType.VarChar, 20) { Value = (object)profile.Gstin ?? DBNull.Value },
                new SqlParameter("@ContactPerson", SqlDbType.NVarChar, 100) { Value = (object)profile.ContactPerson ?? DBNull.Value }
            };

            return DbFactory.ExecuteNonQuery(sql, parameters) > 0;
        }

        public bool CreateSupplierProfile(SupplierProfile profile)
        {
            string sql = @"
                INSERT INTO Suppliers (UserId, CompanyName, BusinessRegistrationNo, Gstin, Address, City, State, Pincode, VerificationStatus, Rating, DocumentPath, CreatedAt)
                VALUES (@UserId, @CompanyName, @BusinessRegistrationNo, @Gstin, @Address, @City, @State, @Pincode, @VerificationStatus, @Rating, @DocumentPath, GETDATE())";

            SqlParameter[] parameters = {
                new SqlParameter("@UserId", SqlDbType.Int) { Value = profile.UserId },
                new SqlParameter("@CompanyName", SqlDbType.NVarChar, 150) { Value = profile.CompanyName },
                new SqlParameter("@BusinessRegistrationNo", SqlDbType.VarChar, 50) { Value = (object)profile.BusinessRegistrationNo ?? DBNull.Value },
                new SqlParameter("@Gstin", SqlDbType.VarChar, 20) { Value = (object)profile.Gstin ?? DBNull.Value },
                new SqlParameter("@Address", SqlDbType.NVarChar, 255) { Value = (object)profile.Address ?? DBNull.Value },
                new SqlParameter("@City", SqlDbType.NVarChar, 50) { Value = (object)profile.City ?? DBNull.Value },
                new SqlParameter("@State", SqlDbType.NVarChar, 50) { Value = (object)profile.State ?? DBNull.Value },
                new SqlParameter("@Pincode", SqlDbType.VarChar, 10) { Value = (object)profile.Pincode ?? DBNull.Value },
                new SqlParameter("@VerificationStatus", SqlDbType.VarChar, 20) { Value = profile.VerificationStatus ?? "Pending" },
                new SqlParameter("@Rating", SqlDbType.Decimal) { Value = profile.Rating },
                new SqlParameter("@DocumentPath", SqlDbType.NVarChar, 255) { Value = (object)profile.DocumentPath ?? DBNull.Value }
            };

            return DbFactory.ExecuteNonQuery(sql, parameters) > 0;
        }

        public bool CreateTechnicianProfile(TechnicianProfile profile)
        {
            string sql = @"
                INSERT INTO Technicians (UserId, SkillSummary, ExperienceYears, HourlyRate, City, State, Pincode, IsAvailable, VerificationStatus, DocumentPath, CreatedAt)
                VALUES (@UserId, @SkillSummary, @ExperienceYears, @HourlyRate, @City, @State, @Pincode, @IsAvailable, @VerificationStatus, @DocumentPath, GETDATE())";

            SqlParameter[] parameters = {
                new SqlParameter("@UserId", SqlDbType.Int) { Value = profile.UserId },
                new SqlParameter("@SkillSummary", SqlDbType.NVarChar, 255) { Value = (object)profile.SkillSummary ?? DBNull.Value },
                new SqlParameter("@ExperienceYears", SqlDbType.Int) { Value = profile.ExperienceYears },
                new SqlParameter("@HourlyRate", SqlDbType.Decimal) { Value = profile.HourlyRate },
                new SqlParameter("@City", SqlDbType.NVarChar, 50) { Value = (object)profile.City ?? DBNull.Value },
                new SqlParameter("@State", SqlDbType.NVarChar, 50) { Value = (object)profile.State ?? DBNull.Value },
                new SqlParameter("@Pincode", SqlDbType.VarChar, 10) { Value = (object)profile.Pincode ?? DBNull.Value },
                new SqlParameter("@IsAvailable", SqlDbType.Bit) { Value = profile.IsAvailable },
                new SqlParameter("@VerificationStatus", SqlDbType.VarChar, 20) { Value = profile.VerificationStatus ?? "Pending" },
                new SqlParameter("@DocumentPath", SqlDbType.NVarChar, 255) { Value = (object)profile.DocumentPath ?? DBNull.Value }
            };

            return DbFactory.ExecuteNonQuery(sql, parameters) > 0;
        }

        public DataTable GetAllUsersWithRoles()
        {
            string sql = @"
                SELECT u.UserId, u.FullName, u.Email, u.PhoneNumber, r.RoleName, u.IsActive, u.IsVerified, u.CreatedAt
                FROM Users u
                INNER JOIN Roles r ON u.RoleId = r.RoleId
                ORDER BY u.CreatedAt DESC";

            return DbFactory.ExecuteQuery(sql);
        }

        public bool UpdateVerificationStatus(int userId, bool isVerified, string verificationStatus = null)
        {
            string sql = "UPDATE Users SET IsVerified = @IsVerified WHERE UserId = @UserId;";
            SqlParameter[] parameters = {
                new SqlParameter("@UserId", SqlDbType.Int) { Value = userId },
                new SqlParameter("@IsVerified", SqlDbType.Bit) { Value = isVerified }
            };

            int rows = DbFactory.ExecuteNonQuery(sql, parameters);

            if (!string.IsNullOrEmpty(verificationStatus))
            {
                string updateSupplierSql = "UPDATE Suppliers SET VerificationStatus = @Status WHERE UserId = @UserId";
                string updateTechSql = "UPDATE Technicians SET VerificationStatus = @Status WHERE UserId = @UserId";
                SqlParameter[] statusParams = {
                    new SqlParameter("@UserId", SqlDbType.Int) { Value = userId },
                    new SqlParameter("@Status", SqlDbType.VarChar, 20) { Value = verificationStatus }
                };
                DbFactory.ExecuteNonQuery(updateSupplierSql, statusParams);
                DbFactory.ExecuteNonQuery(updateTechSql, statusParams);
            }

            return rows > 0;
        }

        private User MapDataRowToUser(DataRow row)
        {
            return new User
            {
                UserId = Convert.ToInt32(row["UserId"]),
                RoleId = Convert.ToInt32(row["RoleId"]),
                RoleName = row["RoleName"].ToString(),
                Email = row["Email"].ToString(),
                PasswordHash = row["PasswordHash"].ToString(),
                Salt = row["Salt"].ToString(),
                FullName = row["FullName"].ToString(),
                PhoneNumber = row["PhoneNumber"] != DBNull.Value ? row["PhoneNumber"].ToString() : null,
                IsActive = Convert.ToBoolean(row["IsActive"]),
                IsVerified = Convert.ToBoolean(row["IsVerified"]),
                CreatedAt = Convert.ToDateTime(row["CreatedAt"])
            };
        }
    }
}
