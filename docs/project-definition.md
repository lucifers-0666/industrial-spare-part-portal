# Industrial Spare-Part Finder & Emergency Procurement Portal
## MCA Final-Year Project Definition & System Requirements Specification

---

## 1. Project Overview & Background

Industrial manufacturing facilities rely on continuous machine operation. When critical machinery breaks down—such as hydraulic presses, CNC lathes, motor drives, or industrial pumps—production lines halt immediately, resulting in substantial financial losses (often exceeding ₹50,000+ per hour).

Traditional procurement during a machine breakdown is highly fragmented:
- **Unknown Part Specifications**: Maintenance engineers guess replacement OEM part numbers without cross-referencing compatibility.
- **Manual Supplier Outreach**: Plant managers spend hours calling local vendors manually to ask about stock availability and lead times.
- **Price Uncertainty & Unverified Quality**: Unclear pricing with emergency markups and no formal supplier background verification.
- **Lack of Technician Coordination**: Spare parts arrive, but no qualified field maintenance technician is available to install them.

The **Industrial Spare-Part Finder & Emergency Procurement Portal** provides an integrated, real-time B2B platform connecting **Factories**, **Verified Suppliers**, **Field Technicians**, and **System Administrators** into a single resolution pipeline.

---

## 2. Target User Roles & Core Responsibilities

```
+-----------------------------------------------------------------------------------+
|                              SYSTEM ADMINISTRATOR                                 |
|         (Supplier Verification, GSTIN Auditing, Governance & Analytics)          |
+--------------------------+--------------------------------+-----------------------+
                           |                                |
                           v                                v
+------------------------------------+           +----------------------------------+
|           FACTORY BUYER            |           |       SPARE-PART SUPPLIER        |
|  - Spare-Part Search               |           |  - Inventory & Stock Management  |
|  - Supplier Price Comparison       | <=======> |  - Real-Time Price Updates       |
|  - RFQ Generation & Bidding        |    RFQ    |  - RFQ Quotation Bidding         |
|  - Emergency Breakdown Dispatch    |   BIDS    |  - Emergency Order Fulfillment    |
+-----------------+------------------+           +----------------------------------+
                  |
                  | Book Service
                  v
+------------------------------------+
|          FIELD TECHNICIAN          |
|  - Skillset & Rate Profiling       |
|  - Duty Availability Status        |
|  - On-Site Maintenance Service     |
+------------------------------------+
```

### 1. Factory / Plant Manager (Buyer)
- Search spare parts by OEM part number, machine model, or industrial category.
- Discover nearby verified suppliers and compare distance, stock levels, unit pricing, and lead times.
- Generate Requests for Quotations (RFQ) for multi-supplier bidding.
- Trigger Emergency Procurement Alerts for immediate breakdown fulfillment.
- Book qualified field service technicians for installation and repair.
- Track procurement status and service visit logs in real time.

### 2. Spare-Part Supplier (Vendor)
- Maintain inventory catalog, stock quantities, and unit pricing.
- Receive and respond to RFQ bidding requests from factory buyers.
- Accept high-priority emergency breakdown orders for rapid dispatch.
- Submit business registration credentials (GSTIN, trade license) for admin verification.

### 3. Field Service Technician
- Profile technical specializations (e.g., Hydraulic Press Repair, CNC Lathe Maintenance, VFD Programming).
- Maintain hourly service rates (₹/hr) and real-time duty availability status (`On Duty` / `Off Duty`).
- Receive service dispatch requests linked to spare-part orders.

### 4. System Administrator (Governance)
- Review supplier registration applications and audit GSTIN documentation.
- Verify technician credentials and skill certifications.
- Monitor system-wide analytics, RFQ completion rates, and emergency response times.
- Resolve dispute tickets and maintain platform security policies.

---

## 3. Core Functional Workflows

```
FACTORY MACHINE BREAKDOWN
         │
         ▼
[01. SEARCH CATALOG] ──► (Part # / Machine Model / Category)
         │
         ▼
[02. COMPARE OPTIONS] ──► (Stock Quantity / Unit Price / Distance in Km)
         │
         ▼
[03. ISSUE REQUEST] ──► Standard RFQ Bidding  OR  Emergency Breakdown Alert
         │
         ▼
[04. CONNECT & BOOK] ──► Receive Supplier Quotes + Book On-Duty Technician
         │
         ▼
[05. PROCURE & TRACK] ──► Order Order Approved ──► Live Dispatch ──► Restored
```

---

## 4. Academic Architecture & Constraints

- **Application Architecture**: ASP.NET Web Forms Web Application Project (`.csproj`).
- **Language & Framework**: C# 7.3 on .NET Framework 4.8.
- **Data Access Layer**: Direct, parameterized ADO.NET using `SqlConnection`, `SqlCommand`, and `SqlDataReader`.
- **Database Engine**: Microsoft SQL Server LocalDB (`(localdb)\MSSQLLocalDB`).
- **Security**: Salted SHA-256 password hashing (`PasswordHasher.cs`), ASP.NET Forms Authentication, and session state security (`SessionHelper.cs`).
- **Frontend Presentation**: Tailwind CSS, custom CSS design system tokens, and Vanilla JavaScript (zero SPA framework dependencies for viva explainability).

