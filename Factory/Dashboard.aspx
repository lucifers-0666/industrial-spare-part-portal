<%@ Page Title="Factory Buyer Dashboard" Language="C#" MasterPageFile="~/MasterPages/Factory.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="IndustrialSparePartPortal.Factory.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Factory Hero Greeting & Emergency Action Bar -->
    <div class="surface-card bg-[#0F172A] text-white p-7 sm:p-9 mb-8 border-slate-700 shadow-lg">
        <div class="flex flex-col md:flex-row justify-between items-start md:items-center gap-6">
            <div class="space-y-1.5 text-left">
                <span class="spec-tag spec-tag-blue text-[10px]">PLANT OPERATIONS WORKSPACE</span>
                <h1 class="text-2xl font-black text-white tracking-tight m-0">Welcome back, <span id="lblUserCompany" runat="server" class="text-[#38BDF8]">Plant Manager</span></h1>
                <p class="text-xs text-slate-300 m-0 max-w-xl leading-relaxed">Search indexed spare parts, issue multi-supplier RFQs, and broadcast emergency breakdown alerts.</p>
            </div>
            <div class="flex flex-wrap gap-2.5 shrink-0">
                <a href="~/Public/Parts.aspx" runat="server" class="btn-primary text-xs py-2.5 px-4 font-bold">
                    <i class="fa-solid fa-magnifying-glass"></i> Find Parts
                </a>
                <a href="~/Public/Emergency.aspx" runat="server" class="btn-emergency text-xs py-2.5 px-4 font-bold">
                    <i class="fa-solid fa-bolt"></i> Breakdown Alert
                </a>
            </div>
        </div>
    </div>

    <!-- Quick Operational Cards -->
    <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-5 mb-8">
        <div class="surface-card p-5 border-l-4 border-l-[#1D4ED8] space-y-1">
            <span class="text-[11px] font-mono uppercase text-[#64748B] block">Active RFQs</span>
            <span class="text-2xl font-black text-[#0F172A] font-mono block">4</span>
            <span class="text-[11px] text-[#64748B] font-mono block">2 Quotes Awaiting Review</span>
        </div>

        <div class="surface-card p-5 border-l-4 border-l-[#EA580C] space-y-1">
            <span class="text-[11px] font-mono uppercase text-[#64748B] block">Breakdown Alerts</span>
            <span class="text-2xl font-black text-[#EA580C] font-mono block">1</span>
            <span class="text-[11px] text-[#EA580C] font-mono font-bold block">1 Supplier Responding</span>
        </div>

        <div class="surface-card p-5 border-l-4 border-l-[#059669] space-y-1">
            <span class="text-[11px] font-mono uppercase text-[#64748B] block">In-Transit Orders</span>
            <span class="text-2xl font-black text-[#0F172A] font-mono block">2</span>
            <span class="text-[11px] text-[#059669] font-mono font-bold block">1 Dispatched Today</span>
        </div>

        <div class="surface-card p-5 border-l-4 border-l-cyan-600 space-y-1">
            <span class="text-[11px] font-mono uppercase text-[#64748B] block">Field Technicians</span>
            <span class="text-2xl font-black text-[#0F172A] font-mono block">1</span>
            <span class="text-[11px] text-[#0284C7] font-mono font-bold block">On-Site Scheduled</span>
        </div>
    </div>
</asp:Content>

