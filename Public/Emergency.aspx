<%@ Page Title="Emergency Breakdown Sourcing" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Emergency.aspx.cs" Inherits="IndustrialSparePartPortal.Public.Emergency" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header-banner text-center space-y-3 bg-gradient-to-br from-amber-500/10 via-orange-500/5 to-amber-500/10">
        <span class="inline-flex items-center gap-2.5 px-4 py-1.5 rounded-full text-xs font-black bg-[#F97316] text-white uppercase tracking-wider shadow-xs">
            <i class="fa-solid fa-triangle-exclamation animate-pulse"></i> Emergency Procurement
        </span>
        <h1 class="text-3xl sm:text-4xl font-black text-[#172033]">MACHINE DOWN? Start an Emergency Request</h1>
        <p class="text-sm text-[#526174] max-w-2xl mx-auto">Submit urgent breakdown sourcing requirements to alert nearby verified suppliers and field service technicians.</p>
    </div>

    <div class="max-w-4xl mx-auto px-6 py-16">
        <div class="content-card border-2 border-orange-300 space-y-6">
            <h3 class="text-xl font-bold text-[#172033] flex items-center gap-2">
                <i class="fa-solid fa-bolt text-[#F97316]"></i> Submit Urgent Breakdown Request
            </h3>
            <p class="text-xs text-[#526174]">Sign in to your Factory Portal account or register to broadcast urgent machine model or OEM part numbers directly to regional suppliers.</p>

            <div class="pt-4 flex flex-col sm:flex-row items-center gap-4">
                <a href="~/Account/Login.aspx?redirect=emergency" runat="server" class="btn-emergency text-sm py-3.5 px-8 font-extrabold w-full sm:w-auto text-center">
                    <i class="fa-solid fa-user-check"></i> Sign In to Submit Request
                </a>
                <a href="~/Account/Register.aspx" runat="server" class="btn-secondary text-sm py-3.5 px-8 font-bold w-full sm:w-auto text-center">
                    Register Portal Account
                </a>
            </div>

            <div class="pt-4 border-t border-[#D9E1EA] text-xs text-[#526174] flex justify-between items-center">
                <span>Demo Support Helpline:</span>
                <strong class="font-mono text-[#172033] text-sm">1800-000-0000</strong>
            </div>
        </div>
    </div>
</asp:Content>

