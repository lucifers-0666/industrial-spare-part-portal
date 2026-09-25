<%@ Page Title="Sign In to Portal" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="IndustrialSparePartPortal.Account.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="description" content="Sign in to your SPAREFINDER industrial procurement workspace." />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="py-12 sm:py-16 bg-[#F8FAFC] flex items-center justify-center min-h-[calc(100vh-var(--site-header-height)-120px)] px-4 sm:px-6 lg:px-8">
        <div class="max-w-4xl w-full grid grid-cols-1 lg:grid-cols-12 rounded-2xl overflow-hidden border border-[#CBD5E1] bg-white shadow-lg">
            
            <!-- Left Column: Industrial Context & Product Telemetry (Desktop Only) -->
            <div class="lg:col-span-5 bg-[#0F172A] text-white p-8 sm:p-10 flex flex-col justify-between relative overflow-hidden">
                <!-- Background Accent Image -->
                <div class="absolute inset-0 opacity-15 mix-blend-overlay pointer-events-none">
                    <img src="<%= ResolveUrl("~/Content/images/hero_plant_workshop.jpg") %>" alt="" class="w-full h-full object-cover" />
                </div>

                <div class="relative z-10 space-y-6">
                    <div class="flex items-center gap-2.5">
                        <div class="w-9 h-9 rounded-lg bg-[#1E293B] border border-slate-700 flex items-center justify-center text-white">
                            <i class="fa-solid fa-gears text-sm text-[#38BDF8]"></i>
                        </div>
                        <div>
                            <span class="text-base font-black tracking-tight text-white leading-none block">SPARE<span class="text-[#38BDF8]">FINDER</span></span>
                            <span class="text-[9px] font-bold text-slate-400 tracking-wider uppercase block mt-0.5 font-mono">B2B Procurement Workspace</span>
                        </div>
                    </div>

                    <div class="space-y-3">
                        <h2 class="text-xl sm:text-2xl font-bold text-white tracking-tight leading-snug m-0">
                            Industrial Spare-Part Sourcing Network
                        </h2>
                        <p class="text-xs text-slate-300 leading-relaxed m-0">
                            Secure single-sign-on access for registered manufacturing plants, accredited spare-part distributors, and field service engineers.
                        </p>
                    </div>

                    <!-- Operational Benefits List -->
                    <div class="space-y-3 pt-2 text-xs text-slate-300">
                        <div class="flex items-start gap-2.5">
                            <i class="fa-solid fa-circle-check text-emerald-400 text-sm mt-0.5 shrink-0"></i>
                            <span>Direct RFQ dispatch to verified regional stockists</span>
                        </div>
                        <div class="flex items-start gap-2.5">
                            <i class="fa-solid fa-circle-check text-emerald-400 text-sm mt-0.5 shrink-0"></i>
                            <span>High-priority emergency breakdown triage desk</span>
                        </div>
                        <div class="flex items-start gap-2.5">
                            <i class="fa-solid fa-circle-check text-emerald-400 text-sm mt-0.5 shrink-0"></i>
                            <span>Certified on-call mechanical, PLC &amp; hydraulic engineers</span>
                        </div>
                    </div>
                </div>

                <!-- Bottom Academic Project Badge -->
                <div class="relative z-10 pt-8 mt-8 border-t border-slate-800 text-[11px] text-slate-400">
                    <span class="font-mono text-slate-500 block text-[10px] uppercase">Environment</span>
                    <span>MCA Final Project Demonstration · Role RBAC Enabled</span>
                </div>
            </div>

            <!-- Right Column: Focused Sign-In Form -->
            <div class="lg:col-span-7 p-7 sm:p-10 flex flex-col justify-center space-y-6">
                
                <div class="space-y-1.5 text-left">
                    <div class="flex items-center gap-2">
                        <span class="spec-tag spec-tag-blue">AUTHENTICATION</span>
                        <span class="text-[11px] text-[#64748B] font-mono">AUTHORIZED USERS</span>
                    </div>
                    <h1 class="text-2xl font-black text-[#0F172A] tracking-tight m-0">Sign In to Account</h1>
                    <p class="text-xs text-[#64748B] m-0">Enter your registered email address and password to enter your workspace.</p>
                </div>

                <!-- Alert Panel for Notifications & Errors -->
                <asp:Panel ID="pnlAlert" runat="server" Visible="false" CssClass="p-3.5 rounded-xl bg-red-50 border border-red-200 text-red-700 text-xs flex items-start gap-2.5">
                    <i class="fa-solid fa-circle-exclamation text-sm shrink-0 mt-0.5 text-red-600"></i>
                    <div>
                        <strong class="block font-bold">Authentication Notice</strong>
                        <asp:Literal ID="litAlertMessage" runat="server"></asp:Literal>
                    </div>
                </asp:Panel>

                <!-- Clean Form Without Overlapping Floating Icons -->
                <div class="space-y-4 text-left">
                    
                    <!-- Email Input -->
                    <div>
                        <label class="block text-xs font-bold text-[#0F172A] mb-1.5 uppercase tracking-wider" for="<%= txtEmail.ClientID %>">
                            Email Address <span class="text-red-500">*</span>
                        </label>
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" autocomplete="email" 
                            CssClass="w-full px-3.5 py-2.5 bg-[#F8FAFC] border border-[#CBD5E1] rounded-xl text-sm text-[#0F172A] placeholder-slate-400 focus:bg-white focus:outline-none focus:border-[#1D4ED8] focus:ring-2 focus:ring-[#1D4ED8]/20 transition-all font-medium" 
                            Placeholder="name@company.com" Required="true"></asp:TextBox>
                    </div>

                    <!-- Password Input with Toggle -->
                    <div>
                        <div class="flex justify-between items-center mb-1.5">
                            <label class="block text-xs font-bold text-[#0F172A] uppercase tracking-wider m-0" for="<%= txtPassword.ClientID %>">
                                Password <span class="text-red-500">*</span>
                            </label>
                            <span class="text-[11px] text-[#64748B] font-mono">Min 6 characters</span>
                        </div>
                        <div class="relative">
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" autocomplete="current-password" 
                                CssClass="w-full pl-3.5 pr-11 py-2.5 bg-[#F8FAFC] border border-[#CBD5E1] rounded-xl text-sm text-[#0F172A] placeholder-slate-400 focus:bg-white focus:outline-none focus:border-[#1D4ED8] focus:ring-2 focus:ring-[#1D4ED8]/20 transition-all font-medium" 
                                Placeholder="••••••••" Required="true"></asp:TextBox>
                            <button type="button" id="btnTogglePassword" 
                                class="absolute right-2 top-1/2 -translate-y-1/2 p-2 text-slate-400 hover:text-slate-700 focus:outline-none transition-colors" 
                                aria-label="Toggle password visibility">
                                <i class="fa-regular fa-eye text-sm" id="iconEye"></i>
                            </button>
                        </div>
                    </div>

                    <!-- Remember Me Option -->
                    <div class="flex items-center justify-between pt-1">
                        <label class="flex items-center gap-2 text-xs text-[#475569] cursor-pointer select-none">
                            <asp:CheckBox ID="chkRememberMe" runat="server" CssClass="rounded border-[#CBD5E1] text-[#1D4ED8] focus:ring-[#1D4ED8]" />
                            <span>Remember login on this computer</span>
                        </label>
                    </div>

                    <!-- Sign In Action Button -->
                    <div class="pt-2">
                        <asp:Button ID="btnLogin" runat="server" Text="Sign In to Portal →" OnClick="btnLogin_Click" 
                            CssClass="btn-primary w-full justify-center py-3 text-xs sm:text-sm font-bold shadow-xs cursor-pointer" />
                    </div>

                </div>

                <!-- Registration & Assistance Links -->
                <div class="pt-4 border-t border-[#E2E8F0] flex flex-col sm:flex-row items-center justify-between gap-2 text-xs text-[#64748B]">
                    <div>
                        New entity on portal? 
                        <a href="~/Account/Register.aspx" runat="server" class="font-bold text-[#1D4ED8] hover:underline ml-1">Register Account</a>
                    </div>
                    <div>
                        <a href="~/Public/WhyUs.aspx" runat="server" class="text-slate-500 hover:underline">Platform Guide</a>
                    </div>
                </div>

                <!-- Academic Evaluation Guidance (No exposed passwords) -->
                <div class="p-3 bg-slate-50 border border-slate-200 rounded-xl text-[11px] text-[#475569] space-y-1">
                    <div class="flex items-center gap-1.5 font-bold text-[#0F172A]">
                        <i class="fa-solid fa-shield-halved text-[#1D4ED8]"></i>
                        <span>Role-Based Portal Access</span>
                    </div>
                    <p class="m-0 leading-relaxed text-slate-500">
                        Pre-seeded accounts are configured in SQL Server for Factory Buyers, Parts Suppliers, Field Technicians, and Portal Administrators. Test accounts auto-route to designated workspace consoles upon sign-in.
                    </p>
                </div>

            </div>

        </div>
    </div>

    <!-- Client-side Password Visibility Toggle (Non-interfering with postbacks) -->
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var toggleBtn = document.getElementById('btnTogglePassword');
            var pwdInput = document.getElementById('<%= txtPassword.ClientID %>');
            var eyeIcon = document.getElementById('iconEye');

            if (toggleBtn && pwdInput && eyeIcon) {
                toggleBtn.addEventListener('click', function (e) {
                    e.preventDefault();
                    if (pwdInput.type === 'password') {
                        pwdInput.type = 'text';
                        eyeIcon.classList.remove('fa-eye');
                        eyeIcon.classList.add('fa-eye-slash');
                        toggleBtn.setAttribute('aria-label', 'Hide password');
                    } else {
                        pwdInput.type = 'password';
                        eyeIcon.classList.remove('fa-eye-slash');
                        eyeIcon.classList.add('fa-eye');
                        toggleBtn.setAttribute('aria-label', 'Show password');
                    }
                });
            }
        });
    </script>
</asp:Content>

