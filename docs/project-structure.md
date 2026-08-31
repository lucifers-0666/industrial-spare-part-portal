# Project Architecture & Directory Structure
## Industrial Spare-Part Finder & Emergency Procurement Portal

---

## 1. Directory Tree & Component Responsibilities

```
industrial-spare-part-portal/
├── README.md                           # Master Project Documentation & Quickstart
├── LICENSE                             # MIT License
├── .gitignore                          # ASP.NET, Visual Studio, & Node Ignore Rules
│
├── docs/                               # Architecture & Design System Documentation
│   ├── project-definition.md          # MCA Project Scope & Requirements
│   ├── project-structure.md           # Architecture & Technical Solution Tree
│   └── design-system.md               # Light Industrial Design Tokens & UI Guidelines
│
├── database/                           # Database Migration & Seed Scripts
│   ├── Tables/01_CreateTables.sql     # DDL Script for Tables & Foreign Keys
│   ├── Seed/02_SeedData.sql           # Seed Data & Salted Demo Admin Account
│   └── README.md                       # LocalDB Migration Guide
│
├── App_Code/                           # C# Business Logic & Data Access Layer
│   ├── Constants/
│   │   └── RoleConstants.cs            # Role Strings ("Factory", "Supplier", etc.)
│   ├── Database/
│   │   └── DbFactory.cs               # Central ADO.NET Connection Provider
│   ├── Helpers/
│   │   ├── BasePage.cs                 # Base Web Forms Page with Session Checks
│   │   ├── PasswordHasher.cs           # Salted SHA-256 Hasher
│   │   └── SessionHelper.cs            # Strongly-typed Session Manager
│   ├── Models/
│   │   ├── User.cs                     # User Data Model
│   │   └── SparePart.cs                # SparePart Inventory Model
│   ├── Repositories/
│   │   ├── Interfaces/IUserRepository.cs
│   │   └── Implementations/UserRepository.cs # Parameterized ADO.NET Repository
│   └── Services/
│       ├── Interfaces/IAuthService.cs
│       └── Implementations/AuthService.cs   # Business Logic & Auth Service
│
├── MasterPages/                        # Web Forms Shared Layout Master Pages
│   ├── Site.Master                     # Main Light Visitor/Public Layout
│   ├── Admin.Master                    # Admin Governance Portal Layout
│   ├── Factory.Master                  # Factory Buyer Portal Layout
│   ├── Supplier.Master                 # Supplier Portal Layout
│   └── Technician.Master               # Field Technician Portal Layout
│
├── Account/                            # Authentication Pages
│   ├── Login.aspx                      # User Login Page
│   ├── Register.aspx                   # Multi-Role Registration Page
│   ├── Logout.aspx                     # Session Teardown Page
│   └── AccessDenied.aspx               # Unauthorized Access Redirect Page
│
├── Admin/                              # Admin Governance Pages
│   └── Dashboard.aspx                  # Admin Analytics & User Verification
├── Factory/                            # Factory Buyer Pages
│   └── Dashboard.aspx                  # Factory Procurement Dashboard
├── Supplier/                           # Supplier Portal Pages
│   └── Dashboard.aspx                  # Inventory & RFQ Bidding Dashboard
├── Technician/                         # Field Technician Pages
│   └── Dashboard.aspx                  # Service Requests & Duty Status Dashboard
│
├── Content/                            # Production Assets & CSS
│   └── css/site.css                    # Compiled Tailwind CSS & Industrial System
├── Tailwind/                           # Tailwind Build Source
│   ├── tailwind.config.js              # Theme Color Tokens & Container Scale
│   └── src/input.css                   # Component Classes & Utility Directives
│
├── Default.aspx                        # Main Visitor Landing Page (Redesigned Light System)
├── Global.asax                         # Application Lifecycle & Routing
├── Web.config                          # ASP.NET Application Configuration
├── IndustrialSparePartPortal.csproj    # Visual Studio Project Manifest
└── IndustrialSparePartPortal.sln       # Visual Studio Solution Manifest
```

---

## 2. Parameterized ADO.NET Data Access Pattern

To ensure viva-level code transparency and robust SQL injection protection, database interactions follow a clean parameterized pattern:

```csharp
public User GetUserByEmail(string email)
{
    using (SqlConnection conn = DbFactory.CreateConnection())
    {
        string query = @"SELECT UserID, FullName, Email, PasswordHash, Salt, Role, Status 
                         FROM Users WHERE Email = @Email";

        using (SqlCommand cmd = new SqlCommand(query, conn))
        {
            cmd.Parameters.AddWithValue("@Email", email);
            conn.Open();
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                if (reader.Read())
                {
                    return MapUserFromReader(reader);
                }
            }
        }
    }
    return null;
}
```

---

## 3. Session & Authentication Controls

Authentication is controlled via `SessionHelper.cs` and `BasePage.cs`:
- Active session variables: `UserID`, `FullName`, `UserRole`, `UserEmail`.
- Page access rules are enforced in `Page_Init` of section master pages (`Admin.Master`, `Factory.Master`, `Supplier.Master`, `Technician.Master`). Unauthenticated or unauthorized requests redirect to `~/Account/AccessDenied.aspx`.
