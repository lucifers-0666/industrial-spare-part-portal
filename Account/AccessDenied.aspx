<%@ Page Title="Access Denied" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="AccessDenied.aspx.cs" Inherits="IndustrialSparePartPortal.Account.AccessDenied" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="py-20 bg-slate-50 flex items-center justify-center px-4">
        <div class="max-w-md w-full text-center">
            <div class="w-16 h-16 rounded-2xl bg-red-100 text-red-600 flex items-center justify-center text-3xl mx-auto mb-4 border border-red-200">
                <i class="fa-solid fa-lock"></i>
            </div>
            <h1 class="text-3xl font-extrabold text-slate-900 mb-2">403 - Access Restricted</h1>
            <p class="text-sm text-slate-600 mb-8 leading-relaxed">
                You do not have the required role-based authorization permissions to access this page. Please return to your role dashboard.
            </p>
            <div class="flex justify-center gap-4">
                <a id="btnDashboard" runat="server" href="~/Default.aspx" class="btn-primary">
                    <i class="fa-solid fa-gauge-high text-xs"></i> Go to Dashboard
                </a>
                <a href="~/Account/Logout.aspx" runat="server" class="btn-secondary">
                    <i class="fa-solid fa-right-from-bracket text-xs"></i> Switch Account
                </a>
            </div>
        </div>
    </div>
</asp:Content>
