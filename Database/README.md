# Database Setup & SQL Migration Guide
## Industrial Spare-Part Finder & Emergency Procurement Portal

This directory contains the SQL DDL schema scripts and initial seed data for local SQL Server deployment.

---

## 1. Database Connection Configuration

The application is configured to connect to **SQL Server LocalDB** (`(localdb)\MSSQLLocalDB`):

- **Database Name**: `IndustrialSparePartDB`
- **Connection String** (in `Web.config`):
  ```xml
  <connectionStrings>
    <add name="IndustrialSparePartDB" 
         connectionString="Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=IndustrialSparePartDB;Integrated Security=True;TrustServerCertificate=True;" 
         providerName="System.Data.SqlClient" />
  </connectionStrings>
  ```

---

## 2. SQL Script Execution Order

Execute the SQL scripts using `sqlcmd` or Visual Studio SQL Server Object Explorer:

### Step 1: Create Database Tables & Foreign Keys
```powershell
sqlcmd -S "(localdb)\MSSQLLocalDB" -Q "CREATE DATABASE IndustrialSparePartDB"
sqlcmd -S "(localdb)\MSSQLLocalDB" -d "IndustrialSparePartDB" -i "Tables/01_CreateTables.sql"
```

### Step 2: Populate Seed Data & Admin Account
```powershell
sqlcmd -S "(localdb)\MSSQLLocalDB" -d "IndustrialSparePartDB" -i "Seed/02_SeedData.sql"
```

---

## 3. Demo Admin Credentials

- **Role**: System Administrator (`Admin`)
- **Email**: `admin@sparepartportal.com`
- **Password**: `Admin@123`
- **Security**: Password stored as a salted SHA-256 hash in the `Users` table.
