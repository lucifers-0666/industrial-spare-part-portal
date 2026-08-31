using System;

namespace IndustrialSparePartPortal.App_Code.Models
{
    public class User
    {
        public int UserId { get; set; }
        public int RoleId { get; set; }
        public string RoleName { get; set; }
        public string Email { get; set; }
        public string PasswordHash { get; set; }
        public string Salt { get; set; }
        public string FullName { get; set; }
        public string PhoneNumber { get; set; }
        public bool IsActive { get; set; }
        public bool IsVerified { get; set; }
        public DateTime CreatedAt { get; set; }
        public DateTime? UpdatedAt { get; set; }
    }

    public class Role
    {
        public int RoleId { get; set; }
        public string RoleName { get; set; }
        public string Description { get; set; }
    }

    public class FactoryProfile
    {
        public int FactoryId { get; set; }
        public int UserId { get; set; }
        public string CompanyName { get; set; }
        public string IndustryType { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Pincode { get; set; }
        public string Gstin { get; set; }
        public string ContactPerson { get; set; }
        public DateTime CreatedAt { get; set; }
    }

    public class SupplierProfile
    {
        public int SupplierId { get; set; }
        public int UserId { get; set; }
        public string CompanyName { get; set; }
        public string BusinessRegistrationNo { get; set; }
        public string Gstin { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Pincode { get; set; }
        public string VerificationStatus { get; set; }
        public decimal Rating { get; set; }
        public string DocumentPath { get; set; }
        public DateTime CreatedAt { get; set; }
    }

    public class TechnicianProfile
    {
        public int TechnicianId { get; set; }
        public int UserId { get; set; }
        public string SkillSummary { get; set; }
        public int ExperienceYears { get; set; }
        public decimal HourlyRate { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Pincode { get; set; }
        public bool IsAvailable { get; set; }
        public string VerificationStatus { get; set; }
        public string DocumentPath { get; set; }
        public DateTime CreatedAt { get; set; }
    }
}
