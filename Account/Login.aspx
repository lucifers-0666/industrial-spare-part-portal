<%@ Page Title="Account Login - SPAREFINDER Workspace" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="IndustrialSparePartPortal.Account.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="description" content="Sign in to your SPAREFINDER industrial procurement workspace." />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="py-14 bg-[#F8FAFC] flex items-center justify-center min-h-[75vh] px-4 sm:px-6">
        <div class="max-w-md w-full space-y-4">
            
            <!-- Login Card -->
            <div class="surface-card p-7 sm:p-9 bg-white shadow-md border border-[#CBD5E1] space-y-6">
                
                <div class="text-center space-y-2">
                    <div class="w-12 h-12 rounded-xl bg-[#0F172A] text-white border border-slate-700 flex items-center justify-center text-lg mx-auto shadow-xs">
                        <i class="fa-solid fa-lock text-[#38BDF8]"></i>
                    </div>
                    <h2 class="text-2xl font-black text-[#0F172A] tracking-tight m-0">Sign In to Portal</h2>
                    <p class="text-xs text-[#64748B] m-0">Enter your registered email and password to access your role workspace</p>
                </div>

                <!-- Alert Message -->
                <asp:Panel ID="pnlAlert" runat="server" Visible="false" CssClass="p-3.5 rounded-lg bg-red-50 border border-red-200 text-red-700 text-xs flex items-start gap-2.5">
                    <i class="fa-solid fa-circle-exclamation text-sm shrink-0 mt-0.5"></i>
                    <div>
                        <strong class="block font-bold">Authentication Notice:</strong>
                        <asp:Literal ID="litAlertMessage" runat="server"></asp:Literal>
                    </div>
                </asp:Panel>

                <!-- Login Form -->
                <div class="space-y-4 text-xs">
                    <div>
                        <label class="form-label" for="<%= txtEmail.ClientID %>">Email Address <span class="text-red-500">*</span></label>
                        <div class="relative">
                            <i class="fa-solid fa-envelope absolute left-3.5 top-3 text-slate-400 text-sm"></i>
                            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-input pl-10" Placeholder="name@company.com" Required="true"></asp:TextBox>
                        </div>
                    </div>

                    <div>
                        <div class="flex justify-between items-center mb-1">
                            <label class="form-label mb-0" for="<%= txtPassword.ClientID %>">Password <span class="text-red-500">*</span></label>
                            <span class="text-[11px] text-[#64748B] font-mono">Min 6 characters</span>
                        </div>
                        <div class="relative">
                            <i class="fa-solid fa-lock absolute left-3.5 top-3 text-slate-400 text-sm"></i>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-input pl-10" Placeholder="••••••••" Required="true"></asp:TextBox>
                        </div>
                    </div>

                    <div class="flex items-center justify-between pt-1">
                        <label class="flex items-center gap-2 text-xs text-[#475569] cursor-pointer">
                            <asp:CheckBox ID="chkRememberMe" runat="server" CssClass="rounded border-[#CBD5E1] text-[#1D4ED8] focus:ring-[#1D4ED8]" />
                            <span>Remember login details</span>
                        </label>
                    </div>

                    <div class="pt-2">
                        <asp:Button ID="btnLogin" runat="server" Text="Sign In to Account →" OnClick="btnLogin_Click" CssClass="btn-primary w-full justify-center py-3 text-xs font-bold shadow-xs cursor-pointer" />
                    </div>
                </div>

                <!-- Registration Link -->
                <div class="pt-4 border-t border-[#E2E8F0] text-center text-xs text-[#64748B]">
                    New to SPAREFINDER? 
                    <a href="~/Account/Register.aspx" runat="server" class="font-bold text-[#1D4ED8] hover:underline ml-1">Register New Account</a>
                </div>

            </div>

            <!-- Demo Credentials Hint Card for Viva Defense -->
            <div class="p-3.5 bg-blue-50/80 border border-blue-200 rounded-xl text-[11px] text-[#1E40AF] text-center space-y-1 font-mono">
                <span class="font-bold block font-sans text-xs">Academic Demo Quick Login:</span>
                <div>Admin: <code>admin@sparepartportal.com</code> | <code>Admin@123</code></div>
                <div class="text-[10px] text-[#64748B] font-sans">Role dashboards route automatically based on session credentials.</div>
            </div>

        </div>
    </div>
</asp:Content>
