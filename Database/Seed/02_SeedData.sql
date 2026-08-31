-- ============================================================================
-- Industrial Spare-Part Finder & Emergency Procurement Portal
-- Seed Data Script
-- ============================================================================

USE IndustrialSparePartDB;
GO

-- 1. SEED ROLES
IF NOT EXISTS (SELECT * FROM Roles WHERE RoleName = 'Administrator')
    INSERT INTO Roles (RoleName, Description) VALUES ('Administrator', 'Platform Superadmin with complete access');

IF NOT EXISTS (SELECT * FROM Roles WHERE RoleName = 'Factory')
    INSERT INTO Roles (RoleName, Description) VALUES ('Factory', 'Industrial Buyer / Plant Manager');

IF NOT EXISTS (SELECT * FROM Roles WHERE RoleName = 'Supplier')
    INSERT INTO Roles (RoleName, Description) VALUES ('Supplier', 'Industrial Spare-Part Supplier');

IF NOT EXISTS (SELECT * FROM Roles WHERE RoleName = 'Technician')
    INSERT INTO Roles (RoleName, Description) VALUES ('Technician', 'Service Provider / Field Maintenance Specialist');
GO

-- 2. SEED DEFAULT ADMIN USER (Email: admin@sparepartportal.com | Password: Admin@123)
-- PasswordHash generated via SHA256(Admin@123 + Salt)
IF NOT EXISTS (SELECT * FROM Users WHERE Email = 'admin@sparepartportal.com')
BEGIN
    INSERT INTO Users (RoleId, Email, PasswordHash, Salt, FullName, PhoneNumber, IsActive, IsVerified, CreatedAt)
    VALUES (
        1, 
        'admin@sparepartportal.com', 
        'ZRxnNHMRXLLPHq96WRumxNbeBZwLf6Sw2M/syZoWzhs=', -- SHA256(Admin@123 + StaticSalt123456)
        'StaticSalt123456', 
        'Platform Administrator', 
        '+91 9876543210', 
        1, 
        1, 
        GETDATE()
    );
END
GO

-- 3. SEED CATEGORIES
IF NOT EXISTS (SELECT * FROM Categories WHERE CategoryName = 'Hydraulics & Pneumatics')
BEGIN
    INSERT INTO Categories (CategoryName, Description, IconClass) VALUES 
    ('Hydraulics & Pneumatics', 'Pumps, Valves, Cylinders, Hoses, Seals, and Compressors', 'fa-wind'),
    ('Motors & Drives', 'AC/DC Motors, Servo Drives, Variable Frequency Drives (VFD)', 'fa-bolt'),
    ('Bearings & Power Transmission', 'Ball Bearings, Roller Bearings, Couplings, Belts, and Gears', 'fa-dharmachakra'),
    ('Electrical & Automation', 'PLCs, Relays, Contactors, Sensors, Circuit Breakers, Encoders', 'fa-microchip'),
    ('Pumps & Valves', 'Centrifugal Pumps, Solenoid Valves, Butterfly Valves, Pressure Controls', 'fa-water');
END
GO

-- 4. SEED MACHINES
IF NOT EXISTS (SELECT * FROM Machines WHERE MachineName = 'CNC Lathe Machine X200')
BEGIN
    INSERT INTO Machines (MachineName, ModelNumber, Manufacturer, Description) VALUES
    ('CNC Lathe Machine X200', 'X200-PRO', 'Siemens Machinery', 'Heavy-duty 4-axis industrial turning machine'),
    ('Hydraulic Stamping Press 500T', 'SP-500T', 'Bosch Rexroth', '500-ton hydraulic sheet metal press'),
    ('Industrial Air Compressor 75HP', 'AC-75HP', 'Atlas Copco', 'Rotary screw industrial air compressor unit');
END
GO

-- 5. SEED SPARE PARTS
IF NOT EXISTS (SELECT * FROM SpareParts WHERE PartNumber = 'PART-HYD-001')
BEGIN
    INSERT INTO SpareParts (CategoryId, MachineId, PartNumber, PartName, Description, TechnicalSpecs, UnitOfMeasure) VALUES
    (1, 2, 'PART-HYD-001', 'High-Pressure Hydraulic Pump 250Bar', 'Axial piston pump for hydraulic press systems', 'Flow Rate: 45 L/min, Pressure: 250 Bar, Mounting: Flange', 'Piece'),
    (2, 1, 'PART-MOT-002', '3-Phase AC Servo Motor 7.5kW', 'High-torque precision motor for CNC spindle drives', 'Power: 7.5kW, RPM: 3000, Voltage: 415V 3-Phase', 'Piece'),
    (3, 1, 'PART-BRG-003', 'Deep Groove Ball Bearing 6210-2RS', 'Heavy load sealed bearing for industrial shafts', 'Inner Dia: 50mm, Outer Dia: 90mm, Width: 20mm', 'Piece'),
    (4, 3, 'PART-ELE-004', 'Industrial VFD Inverter 15kW', 'Variable Frequency Drive for speed modulation', 'Input: 3-Phase 415V, Output: 0-400Hz, IP20 Rating', 'Piece');
END
GO
