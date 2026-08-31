<%@ Page Title="Technician Service Portal Dashboard" Language="C#" MasterPageFile="~/MasterPages/Technician.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="IndustrialSparePartPortal.Technician.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Technician Greeting & Status Banner -->
    <div class="card bg-gradient-to-r from-slate-900 to-slate-800 text-white p-8 mb-8 border-slate-700">
        <div class="flex flex-col md:flex-row justify-between items-start md:items-center gap-6">
            <div>
                <span class="text-xs font-semibold text-cyan-400 uppercase tracking-wider block mb-1">Industrial Field Maintenance</span>
                <h1 class="text-2xl font-bold">Welcome back, <span id="lblTechName" runat="server">Service Provider</span></h1>
                <p class="text-xs text-slate-300 mt-1 max-w-xl">Manage plant service requests, update your technical skills, and manage duty availability.</p>
            </div>
            <div class="flex flex-wrap gap-3">
                <a href="~/Technician/Requests/ServiceRequests.aspx" runat="server" class="btn-primary text-xs">
                    <i class="fa-solid fa-bell"></i> View Service Requests
                </a>
                <a href="~/Technician/Profile/TechProfile.aspx" runat="server" class="btn-secondary text-xs text-slate-900">
                    <i class="fa-solid fa-user-pen"></i> Update Skills & Rates
                </a>
            </div>
        </div>
    </div>

    <!-- Quick Stat Metrics -->
    <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6 mb-8">
        <div class="card border-l-4 border-l-cyan-600">
            <span class="text-xs font-semibold text-slate-500 uppercase tracking-wider block">Assigned Service Requests</span>
            <span class="text-2xl font-bold text-slate-900 mt-1 block">3</span>
            <a href="~/Technician/Requests/ServiceRequests.aspx" runat="server" class="text-[11px] font-medium text-cyan-600 hover:text-cyan-700 mt-2 block">View Details →</a>
        </div>

        <div class="card border-l-4 border-l-emerald-600">
            <span class="text-xs font-semibold text-slate-500 uppercase tracking-wider block">Services Completed</span>
            <span class="text-2xl font-bold text-slate-900 mt-1 block">12</span>
            <a href="~/Technician/History/ServiceHistory.aspx" runat="server" class="text-[11px] font-medium text-emerald-600 hover:text-emerald-700 mt-2 block">Service History →</a>
        </div>

        <div class="card border-l-4 border-l-amber-600">
            <span class="text-xs font-semibold text-slate-500 uppercase tracking-wider block">Current Hourly Rate</span>
            <span class="text-2xl font-bold text-slate-900 mt-1 block">₹1,200/hr</span>
            <a href="~/Technician/Profile/TechProfile.aspx" runat="server" class="text-[11px] font-medium text-amber-600 hover:text-amber-700 mt-2 block">Update Rates →</a>
        </div>

        <div class="card border-l-4 border-l-blue-600">
            <span class="text-xs font-semibold text-slate-500 uppercase tracking-wider block">Availability Status</span>
            <span class="text-sm font-bold text-emerald-600 mt-2 flex items-center gap-1.5"><i class="fa-solid fa-circle text-[10px]"></i> On Duty / Available</span>
            <a href="~/Technician/Availability/Schedule.aspx" runat="server" class="text-[11px] font-medium text-blue-600 hover:text-blue-700 mt-2 block">Change Duty Status →</a>
        </div>
    </div>
</asp:Content>
