<%@ Page Title="Technician Service Portal Dashboard" Language="C#" MasterPageFile="~/MasterPages/Technician.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="IndustrialSparePartPortal.Technician.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Technician Greeting & Status Banner -->
    <div class="surface-card bg-[#0F172A] text-white p-7 sm:p-9 mb-8 border-slate-700 shadow-lg">
        <div class="flex flex-col md:flex-row justify-between items-start md:items-center gap-6">
            <div class="space-y-1.5 text-left">
                <span class="spec-tag spec-tag-blue text-[10px]">FIELD MAINTENANCE &amp; COMMISSIONING</span>
                <h1 class="text-2xl font-black text-white tracking-tight m-0">Welcome back, <span id="lblTechName" runat="server" class="text-[#38BDF8]">Service Provider</span></h1>
                <p class="text-xs text-slate-300 m-0 max-w-xl leading-relaxed">Manage on-site breakdown requests, declare specialized diagnostic machinery skills, and set duty availability.</p>
            </div>
            <div class="flex flex-wrap gap-2.5 shrink-0">
                <a href="~/Public/Emergency.aspx" runat="server" class="btn-emergency text-xs py-2.5 px-4 font-bold">
                    <i class="fa-solid fa-triangle-exclamation"></i> Breakdown Alerts
                </a>
                <a href="~/Public/Technicians.aspx" runat="server" class="btn-primary text-xs py-2.5 px-4 font-bold">
                    <i class="fa-solid fa-user-gear"></i> Directory Profile
                </a>
            </div>
        </div>
    </div>

    <!-- Quick Stat Metrics -->
    <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-5 mb-8">
        <div class="surface-card p-5 border-l-4 border-l-cyan-600 space-y-1">
            <span class="text-[11px] font-mono uppercase text-[#64748B] block">Assigned Service Calls</span>
            <span class="text-2xl font-black text-[#0F172A] font-mono block">3</span>
            <span class="text-[11px] text-[#0284C7] font-mono font-bold block">1 Scheduled Today</span>
        </div>

        <div class="surface-card p-5 border-l-4 border-l-[#059669] space-y-1">
            <span class="text-[11px] font-mono uppercase text-[#64748B] block">Services Completed</span>
            <span class="text-2xl font-black text-[#0F172A] font-mono block">12</span>
            <span class="text-[11px] text-[#059669] font-mono font-bold block">100% On-Time Record</span>
        </div>

        <div class="surface-card p-5 border-l-4 border-l-[#B45309] space-y-1">
            <span class="text-[11px] font-mono uppercase text-[#64748B] block">Billing Hourly Rate</span>
            <span class="text-2xl font-black text-[#0F172A] font-mono block">₹1,200/hr</span>
            <span class="text-[11px] text-[#B45309] font-mono font-bold block">Standard Day Shift</span>
        </div>

        <div class="surface-card p-5 border-l-4 border-l-[#1D4ED8] space-y-1">
            <span class="text-[11px] font-mono uppercase text-[#64748B] block">Availability Status</span>
            <span class="text-sm font-bold text-[#059669] mt-2 flex items-center gap-1.5 font-mono">
                <i class="fa-solid fa-circle text-[8px] text-emerald-600"></i> On Duty &middot; Available
            </span>
            <span class="text-[11px] text-[#64748B] font-mono block">Proximity: 25 km radius</span>
        </div>
    </div>
</asp:Content>

