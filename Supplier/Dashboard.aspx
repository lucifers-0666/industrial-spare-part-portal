<%@ Page Title="Supplier Operations Dashboard" Language="C#" MasterPageFile="~/MasterPages/Supplier.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="IndustrialSparePartPortal.Supplier.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Supplier Greeting & Alert Header -->
    <div class="surface-card bg-[#0F172A] text-white p-7 sm:p-9 mb-8 border-slate-700 shadow-lg">
        <div class="flex flex-col md:flex-row justify-between items-start md:items-center gap-6">
            <div class="space-y-1.5 text-left">
                <span class="spec-tag spec-tag-emerald text-[10px]">SUPPLIER INVENTORY &amp; BIDDING</span>
                <h1 class="text-2xl font-black text-white tracking-tight m-0">Welcome back, <span id="lblSupplierCompany" runat="server" class="text-emerald-400">Industrial Stockist</span></h1>
                <p class="text-xs text-slate-300 m-0 max-w-xl leading-relaxed">Update physical stock quantities, submit quotation responses, and fulfill emergency breakdown sourcing broadcasts.</p>
            </div>
            <div class="flex flex-wrap gap-2.5 shrink-0">
                <a href="~/Public/Parts.aspx" runat="server" class="btn-primary text-xs py-2.5 px-4 font-bold bg-[#059669] hover:bg-[#047857]">
                    <i class="fa-solid fa-boxes-stacked"></i> Manage Inventory
                </a>
                <a href="~/Public/Emergency.aspx" runat="server" class="btn-emergency text-xs py-2.5 px-4 font-bold">
                    <i class="fa-solid fa-bell"></i> Emergency Alerts
                </a>
            </div>
        </div>
    </div>

    <!-- Quick Stat Metrics -->
    <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-5 mb-8">
        <div class="surface-card p-5 border-l-4 border-l-[#059669] space-y-1">
            <span class="text-[11px] font-mono uppercase text-[#64748B] block">Listed Inventory Items</span>
            <span class="text-2xl font-black text-[#0F172A] font-mono block">18</span>
            <span class="text-[11px] text-[#059669] font-mono font-bold block">All Parts Active</span>
        </div>

        <div class="surface-card p-5 border-l-4 border-l-[#B45309] space-y-1">
            <span class="text-[11px] font-mono uppercase text-[#64748B] block">Incoming RFQs</span>
            <span class="text-2xl font-black text-[#0F172A] font-mono block">5</span>
            <span class="text-[11px] text-[#B45309] font-mono font-bold block">3 Require Quotation</span>
        </div>

        <div class="surface-card p-5 border-l-4 border-l-[#EA580C] space-y-1">
            <span class="text-[11px] font-mono uppercase text-[#64748B] block">Breakdown Alerts</span>
            <span class="text-2xl font-black text-[#EA580C] font-mono block">2</span>
            <span class="text-[11px] text-[#EA580C] font-mono font-bold block">Critical Urgency</span>
        </div>

        <div class="surface-card p-5 border-l-4 border-l-[#1D4ED8] space-y-1">
            <span class="text-[11px] font-mono uppercase text-[#64748B] block">Orders to Fulfill</span>
            <span class="text-2xl font-black text-[#0F172A] font-mono block">3</span>
            <span class="text-[11px] text-[#1D4ED8] font-mono font-bold block">Pending Dispatch</span>
        </div>
    </div>
</asp:Content>
