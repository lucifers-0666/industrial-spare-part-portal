<%@ Page Title="Access Restricted - Authorization Required" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="AccessDenied.aspx.cs" Inherits="IndustrialSparePartPortal.Account.AccessDenied" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="description" content="Role-based access restriction notice." />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="py-20 bg-[#F8FAFC] flex items-center justify-center min-h-[70vh] px-4">
        <div class="max-w-md w-full text-center space-y-6">
            <div class="surface-card p-8 bg-white shadow-md border border-[#CBD5E1] space-y-5">
                <div class="w-14 h-14 rounded-2xl bg-amber-50 text-[#B45309] border border-amber-200 flex items-center justify-center text-2xl mx-auto shadow-xs">
                    <i class="fa-solid fa-shield-halved"></i>
                </div>
                
                <div class="space-y-2">
                    <span class="spec-tag spec-tag-amber">RBAC POLICY RESTRICTION</span>
                    <h1 class="text-2xl font-black text-[#0F172A] tracking-tight m-0">403 &middot; Role Authorization Required</h1>
                    <p class="text-xs text-[#475569] leading-relaxed m-0">
                        Your account credentials do not grant permissions to access this specific module. Each role workspace (Factory, Supplier, Technician, Admin) operates with strict role-based separation.
                    </p>
                </div>

                <div class="pt-4 border-t border-[#E2E8F0] flex flex-col sm:flex-row justify-center gap-3">
                    <a id="btnDashboard" runat="server" href="~/Default.aspx" class="btn-primary text-xs py-2.5 px-4 font-bold">
                        <i class="fa-solid fa-gauge-high mr-1"></i> Return to Workspace
                    </a>
                    <a href="~/Account/Logout.aspx" runat="server" class="btn-secondary text-xs py-2.5 px-4 font-bold">
                        <i class="fa-solid fa-right-from-bracket mr-1"></i> Switch Account
                    </a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

