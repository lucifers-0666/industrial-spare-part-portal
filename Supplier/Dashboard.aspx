<%@ Page Title="Supplier Operations Dashboard" Language="C#" MasterPageFile="~/MasterPages/Supplier.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="IndustrialSparePartPortal.Supplier.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Supplier Greeting & Alert Header -->
    <div class="card bg-gradient-to-r from-slate-900 to-slate-800 text-white p-8 mb-8 border-slate-700">
        <div class="flex flex-col md:flex-row justify-between items-start md:items-center gap-6">
            <div>
                <span class="text-xs font-semibold text-emerald-400 uppercase tracking-wider block mb-1">Supplier Operations & Inventory</span>
                <h1 class="text-2xl font-bold">Welcome back, <span id="lblSupplierCompany" runat="server">Spare-Part Supplier</span></h1>
                <p class="text-xs text-slate-300 mt-1 max-w-xl">Update stock levels, submit bids to factory RFQs, and fulfill high-priority breakdown emergency alerts.</p>
            </div>
            <div class="flex flex-wrap gap-3">
                <a href="~/Supplier/Inventory/ManageInventory.aspx" runat="server" class="btn-success text-xs">
                    <i class="fa-solid fa-boxes-stacked"></i> Update Stock & Pricing
                </a>
                <a href="~/Supplier/Quotations/RfqRequests.aspx" runat="server" class="btn-primary text-xs">
                    <i class="fa-solid fa-file-signature"></i> View RFQ Requests
                </a>
            </div>
        </div>
    </div>

    <!-- Quick Stat Metrics -->
    <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6 mb-8">
        <div class="card border-l-4 border-l-emerald-600">
            <span class="text-xs font-semibold text-slate-500 uppercase tracking-wider block">Inventory Items Listed</span>
            <span class="text-2xl font-bold text-slate-900 mt-1 block">18</span>
            <a href="~/Supplier/Inventory/ManageInventory.aspx" runat="server" class="text-[11px] font-medium text-emerald-600 hover:text-emerald-700 mt-2 block">Manage Stock →</a>
        </div>

        <div class="card border-l-4 border-l-amber-600">
            <span class="text-xs font-semibold text-slate-500 uppercase tracking-wider block">Incoming RFQs</span>
            <span class="text-2xl font-bold text-slate-900 mt-1 block">5</span>
            <a href="~/Supplier/Quotations/RfqRequests.aspx" runat="server" class="text-[11px] font-medium text-amber-600 hover:text-amber-700 mt-2 block">Submit Quotation →</a>
        </div>

        <div class="card border-l-4 border-l-red-600">
            <span class="text-xs font-semibold text-slate-500 uppercase tracking-wider block">Emergency Breakdown Alerts</span>
            <span class="text-2xl font-bold text-red-600 mt-1 block">2</span>
            <a href="~/Supplier/EmergencyRequests/EmergencyAlerts.aspx" runat="server" class="text-[11px] font-medium text-red-600 hover:text-red-700 mt-2 block">Respond Immediately →</a>
        </div>

        <div class="card border-l-4 border-l-blue-600">
            <span class="text-xs font-semibold text-slate-500 uppercase tracking-wider block">Pending Orders</span>
            <span class="text-2xl font-bold text-slate-900 mt-1 block">3</span>
            <a href="~/Supplier/Orders/SupplierOrders.aspx" runat="server" class="text-[11px] font-medium text-blue-600 hover:text-blue-700 mt-2 block">Fulfill Orders →</a>
        </div>
    </div>
</asp:Content>
