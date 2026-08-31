<%@ Page Title="Factory Buyer Dashboard" Language="C#" MasterPageFile="~/MasterPages/Factory.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="IndustrialSparePartPortal.Factory.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Factory Hero Greeting & Emergency Action Bar -->
    <div class="card bg-gradient-to-r from-slate-900 to-slate-800 text-white p-8 mb-8 border-slate-700">
        <div class="flex flex-col md:flex-row justify-between items-start md:items-center gap-6">
            <div>
                <span class="text-xs font-semibold text-blue-400 uppercase tracking-wider block mb-1">Industrial Plant Operations</span>
                <h1 class="text-2xl font-bold">Welcome back, <span id="lblUserCompany" runat="server">Plant Manager</span></h1>
                <p class="text-xs text-slate-300 mt-1 max-w-xl">Search spare parts across verified suppliers, compare RFQ prices, and handle emergency breakdown procurements.</p>
            </div>
            <div class="flex flex-wrap gap-3">
                <a href="~/Factory/SpareParts/SearchParts.aspx" runat="server" class="btn-primary text-xs">
                    <i class="fa-solid fa-magnifying-glass"></i> Search Parts Catalog
                </a>
                <a href="~/Factory/EmergencyRequests/CreateEmergencyRequest.aspx" runat="server" class="btn-emergency text-xs">
                    <i class="fa-solid fa-bolt"></i> Urgent Breakdown Request
                </a>
            </div>
        </div>
    </div>

    <!-- Quick Operational Cards -->
    <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6 mb-8">
        <div class="card border-l-4 border-l-blue-600">
            <span class="text-xs font-semibold text-slate-500 uppercase tracking-wider block">Active RFQs</span>
            <span class="text-2xl font-bold text-slate-900 mt-1 block">4</span>
            <a href="~/Factory/Quotations/MyQuotations.aspx" runat="server" class="text-[11px] font-medium text-blue-600 hover:text-blue-700 mt-2 block">View RFQ Bids →</a>
        </div>

        <div class="card border-l-4 border-l-red-600">
            <span class="text-xs font-semibold text-slate-500 uppercase tracking-wider block">Emergency Requests</span>
            <span class="text-2xl font-bold text-red-600 mt-1 block">1</span>
            <a href="~/Factory/EmergencyRequests/MyEmergencyRequests.aspx" runat="server" class="text-[11px] font-medium text-red-600 hover:text-red-700 mt-2 block">Track Dispatch →</a>
        </div>

        <div class="card border-l-4 border-l-emerald-600">
            <span class="text-xs font-semibold text-slate-500 uppercase tracking-wider block">Active Orders</span>
            <span class="text-2xl font-bold text-slate-900 mt-1 block">2</span>
            <a href="~/Factory/Orders/MyOrders.aspx" runat="server" class="text-[11px] font-medium text-emerald-600 hover:text-emerald-700 mt-2 block">Track Shipments →</a>
        </div>

        <div class="card border-l-4 border-l-cyan-600">
            <span class="text-xs font-semibold text-slate-500 uppercase tracking-wider block">Technician Bookings</span>
            <span class="text-2xl font-bold text-slate-900 mt-1 block">1</span>
            <a href="~/Factory/Technicians/FindTechnicians.aspx" runat="server" class="text-[11px] font-medium text-cyan-600 hover:text-cyan-700 mt-2 block">Book Technician →</a>
        </div>
    </div>
</asp:Content>
