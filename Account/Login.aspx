<%@ Page Title="Account Login" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="IndustrialSparePartPortal.Account.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="py-16 bg-slate-50 flex items-center justify-center min-h-[70vh] px-4">
        <div class="max-w-md w-full">
            <!-- Login Card -->
            <div class="card shadow-lg border border-slate-200 p-8 bg-white">
                <div class="text-center mb-8">
                    <div class="w-12 h-12 rounded-xl bg-blue-600 text-white flex items-center justify-center text-xl font-bold mx-auto mb-3 shadow-md">
                        <i class="fa-solid fa-right-to-bracket"></i>
                    </div>
                    <h2 class="text-2xl font-bold text-slate-900">Portal Login</h2>
                    <p class="text-xs text-slate-500 mt-1">Sign in with your registered account credentials</p>
                </div>

                <!-- Alert Message -->
                <asp:Panel ID="pnlAlert" runat="server" Visible="false" CssClass="mb-6 p-4 rounded-lg bg-red-50 border border-red-200 text-red-700 text-xs flex items-center gap-2">
                    <i class="fa-solid fa-circle-exclamation text-base shrink-0"></i>
                    <asp:Literal ID="litAlertMessage" runat="server"></asp:Literal>
                </asp:Panel>

                <!-- Login Form -->
                <div class="space-y-5">
                    <div>
                        <label class="form-label" for="txtEmail">Email Address</label>
                        <div class="relative">
                            <i class="fa-solid fa-envelope absolute left-3.5 top-3 text-slate-400 text-sm"></i>
                            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-input pl-10" Placeholder="name@company.com" Required="true"></asp:TextBox>
                        </div>
                    </div>

                    <div>
                        <div class="flex justify-between items-center mb-1.5">
                            <label class="form-label mb-0" for="txtPassword">Password</label>
                            <a href="#" class="text-xs font-semibold text-blue-600 hover:text-blue-700">Forgot Password?</a>
                        </div>
                        <div class="relative">
                            <i class="fa-solid fa-lock absolute left-3.5 top-3 text-slate-400 text-sm"></i>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-input pl-10" Placeholder="••••••••" Required="true"></asp:TextBox>
                        </div>
                    </div>

                    <div class="flex items-center justify-between">
                        <label class="flex items-center gap-2 text-xs text-slate-600 cursor-pointer">
                            <asp:CheckBox ID="chkRememberMe" runat="server" CssClass="rounded border-slate-300 text-blue-600 focus:ring-blue-500" />
                            <span>Remember login details</span>
                        </label>
                    </div>

                    <div>
                        <asp:Button ID="btnLogin" runat="server" Text="Sign In to Account" OnClick="btnLogin_Click" CssClass="btn-primary w-full py-3 text-sm font-semibold rounded-lg shadow-sm" />
                    </div>
                </div>

                <!-- Registration Quick Link -->
                <div class="mt-8 pt-6 border-t border-slate-100 text-center text-xs text-slate-500">
                    Don't have an industrial portal account? 
                    <a href="~/Account/Register.aspx" runat="server" class="font-bold text-blue-600 hover:text-blue-700 ml-1">Register New Account</a>
                </div>
            </div>

            <!-- Seed Admin Quick Hint for Testing -->
            <div class="mt-4 p-3 bg-blue-50 border border-blue-200 rounded-lg text-[11px] text-blue-800 text-center">
                <strong>Demo Admin Credentials:</strong> <code>admin@sparepartportal.com</code> | <code>Admin@123</code>
            </div>
        </div>
    </div>
</asp:Content>
