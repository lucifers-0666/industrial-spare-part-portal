using System;

namespace IndustrialSparePartPortal.App_Code.Models
{
    public class Category
    {
        public int CategoryId { get; set; }
        public string CategoryName { get; set; }
        public string Description { get; set; }
        public string IconClass { get; set; }
        public bool IsActive { get; set; }
    }

    public class Machine
    {
        public int MachineId { get; set; }
        public string MachineName { get; set; }
        public string ModelNumber { get; set; }
        public string Manufacturer { get; set; }
        public string Description { get; set; }
    }

    public class SparePart
    {
        public int PartId { get; set; }
        public int CategoryId { get; set; }
        public string CategoryName { get; set; }
        public int? MachineId { get; set; }
        public string MachineName { get; set; }
        public string PartNumber { get; set; }
        public string PartName { get; set; }
        public string Description { get; set; }
        public string TechnicalSpecs { get; set; }
        public string UnitOfMeasure { get; set; }
        public string ImageUrl { get; set; }
        public DateTime CreatedAt { get; set; }
    }

    public class SupplierInventoryItem
    {
        public int InventoryId { get; set; }
        public int SupplierId { get; set; }
        public string SupplierName { get; set; }
        public int PartId { get; set; }
        public string PartNumber { get; set; }
        public string PartName { get; set; }
        public decimal UnitPrice { get; set; }
        public int StockQuantity { get; set; }
        public string AvailabilityStatus { get; set; }
        public int LeadTimeDays { get; set; }
        public DateTime LastUpdated { get; set; }
    }
}
