<%@ Page Title="Field Technician Network - Industrial Specialists" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Technicians.aspx.cs" Inherits="IndustrialSparePartPortal.Public.Technicians" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <!-- 1. Page Header Banner -->
    <div class="page-header-banner text-center space-y-4 bg-gradient-to-b from-blue-50/60 to-[#F8FAFC] py-14 border-b border-[#D9E1EA]">
        <span class="copper-badge"><i class="fa-solid fa-wrench text-[#B87333]"></i> Field Technical Support</span>
        <h1 class="text-3xl sm:text-4xl lg:text-5xl font-black text-[#172033] tracking-tight">
            Discover Certified Field Technicians
        </h1>
        <p class="text-sm sm:text-base text-[#526174] max-w-3xl mx-auto leading-relaxed">
            Connect with certified on-site service engineers for machine troubleshooting, PLC automation diagnostics, hydraulic commissioning, and emergency breakdown repairs.
        </p>
    </div>

    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12 space-y-10">
        
        <!-- 2. Search & Filter Bar Card -->
        <div class="bg-white p-6 sm:p-8 rounded-3xl border border-[#D9E1EA] shadow-xs space-y-6">
            <div class="flex flex-col md:flex-row items-stretch md:items-center gap-4">
                
                <!-- Search Box -->
                <div class="relative flex-1">
                    <i class="fa-solid fa-magnifying-glass absolute left-4 top-3.5 text-slate-400"></i>
                    <asp:TextBox ID="txtSearch" runat="server" CssClass="w-full pl-11 pr-4 py-3 bg-[#F8FAFC] border border-[#D9E1EA] rounded-xl text-sm text-[#172033] placeholder-slate-400 focus:bg-white focus:outline-none focus:border-[#1677FF] transition-all" Placeholder="Search by Specialist Name, Skill (e.g. PLC, Hydraulic, CNC), or City..."></asp:TextBox>
                </div>

                <!-- Skill Filter -->
                <div class="w-full md:w-56">
                    <asp:DropDownList ID="ddlSkill" runat="server" CssClass="w-full px-4 py-3 bg-[#F8FAFC] border border-[#D9E1EA] rounded-xl text-sm text-[#172033] focus:bg-white focus:outline-none focus:border-[#1677FF] transition-all">
                        <asp:ListItem Value="" Text="All Technical Skills"></asp:ListItem>
                        <asp:ListItem Value="Hydraulic" Text="Hydraulic Systems"></asp:ListItem>
                        <asp:ListItem Value="CNC" Text="CNC Machinery"></asp:ListItem>
                        <asp:ListItem Value="PLC" Text="Electrical & PLC"></asp:ListItem>
                        <asp:ListItem Value="Mechanical" Text="Mechanical & Pumps"></asp:ListItem>
                        <asp:ListItem Value="Automation" Text="Industrial Automation"></asp:ListItem>
                    </asp:DropDownList>
                </div>

                <!-- City Filter -->
                <div class="w-full md:w-48">
                    <asp:DropDownList ID="ddlCity" runat="server" CssClass="w-full px-4 py-3 bg-[#F8FAFC] border border-[#D9E1EA] rounded-xl text-sm text-[#172033] focus:bg-white focus:outline-none focus:border-[#1677FF] transition-all">
                        <asp:ListItem Value="" Text="All Locations"></asp:ListItem>
                        <asp:ListItem Value="Ahmedabad" Text="Ahmedabad, GJ"></asp:ListItem>
                        <asp:ListItem Value="Pune" Text="Pune, MH"></asp:ListItem>
                        <asp:ListItem Value="Mumbai" Text="Mumbai, MH"></asp:ListItem>
                        <asp:ListItem Value="Vadodara" Text="Vadodara, GJ"></asp:ListItem>
                        <asp:ListItem Value="Rajkot" Text="Rajkot, GJ"></asp:ListItem>
                        <asp:ListItem Value="Surat" Text="Surat, GJ"></asp:ListItem>
                    </asp:DropDownList>
                </div>

                <!-- Buttons -->
                <div class="flex items-center gap-3 shrink-0">
                    <asp:Button ID="btnSearch" runat="server" Text="Filter Technicians" OnClick="btnSearch_Click" CssClass="btn-primary text-xs py-3 px-6 font-extrabold cursor-pointer" />
                    <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" CssClass="btn-secondary text-xs py-3 px-5 font-bold cursor-pointer" />
                </div>

            </div>
        </div>

        <!-- 3. Results Header Status -->
        <div class="flex justify-between items-center text-xs text-[#526174] px-1">
            <div>
                <asp:Label ID="lblResultsCount" runat="server" CssClass="font-bold text-[#172033]"></asp:Label>
            </div>
            <div class="flex items-center gap-2">
                <span class="w-2 h-2 rounded-full bg-cyan-500"></span>
                <span>Verified Field Service Directory</span>
            </div>
        </div>

        <!-- 4. Technician Cards Grid -->
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
            <asp:Repeater ID="rptTechnicians" runat="server">
                <ItemTemplate>
                    <div class="card hover:border-[#1677FF] flex flex-col justify-between space-y-5 shadow-xs">
                        
                        <!-- Card Header -->
                        <div class="space-y-3">
                            <div class="flex items-start justify-between gap-2">
                                <div class="flex items-center gap-3">
                                    <div class="w-12 h-12 rounded-2xl bg-cyan-100 text-cyan-800 flex items-center justify-center font-bold text-xl shrink-0">
                                        <i class="fa-solid fa-user-gear"></i>
                                    </div>
                                    <div>
                                        <h3 class="font-bold text-[#172033] text-base leading-snug"><%# Eval("FullName") %></h3>
                                        <span class="text-xs text-[#526174] font-medium flex items-center gap-1 mt-0.5">
                                            <i class="fa-solid fa-location-dot text-slate-400"></i> <%# Eval("City") %>, <%# Eval("State") %>
                                        </span>
                                    </div>
                                </div>
                            </div>

                            <!-- Badges -->
                            <div class="flex items-center justify-between pt-1">
                                <span class='<%# Convert.ToBoolean(Eval("IsAvailable")) ? "badge-verified" : "badge-pending" %>'>
                                    <i class='fa-solid <%# Convert.ToBoolean(Eval("IsAvailable")) ? "fa-circle-check text-emerald-600" : "fa-clock text-amber-600" %> mr-1'></i>
                                    <%# Convert.ToBoolean(Eval("IsAvailable")) ? "Available for Dispatch" : "Engaged on Site" %>
                                </span>
                                <span class="text-xs font-mono font-bold text-[#1677FF]">
                                    <%# Eval("ExperienceYears") %>+ Yrs Exp
                                </span>
                            </div>

                            <!-- Specialized Skillset Description -->
                            <div class="bg-[#F8FAFC] p-3.5 rounded-xl border border-[#D9E1EA] text-xs text-[#526174] space-y-1">
                                <div class="font-bold text-[#172033]">Core Specialization:</div>
                                <p class="m-0 leading-relaxed"><%# Eval("SkillSummary") %></p>
                            </div>
                        </div>

                        <!-- Card Footer -->
                        <div class="pt-3 border-t border-[#D9E1EA] space-y-3">
                            <div class="flex justify-between items-center text-xs">
                                <div>
                                    <span class="text-[10px] text-slate-400 block">Service Charge Rate</span>
                                    <span class="text-base font-black text-[#172033] font-mono">
                                        &#8377;<%# Convert.ToDecimal(Eval("HourlyRate")).ToString("N0") %>/hr
                                    </span>
                                </div>
                                <span class="copper-tag"><%# Eval("VerificationStatus").ToString() == "Verified" ? "VERIFIED TECH" : "DEMO PROFILE" %></span>
                            </div>

                            <a href='<%# ResolveUrl("~/Account/Login.aspx?returnUrl=" + Server.UrlEncode("~/Public/Technicians.aspx")) %>' class="btn-primary w-full justify-center text-xs py-2.5 font-bold text-center block">
                                <i class="fa-solid fa-calendar-check mr-1.5"></i> Request Service
                            </a>
                        </div>

                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>

        <!-- 5. No Results State -->
        <asp:Panel ID="pnlNoResults" runat="server" Visible="false" CssClass="text-center py-16 bg-white border border-[#D9E1EA] rounded-3xl space-y-4">
            <div class="w-14 h-14 mx-auto rounded-full bg-slate-100 flex items-center justify-center text-slate-400 text-2xl">
                <i class="fa-solid fa-wrench"></i>
            </div>
            <h3 class="text-lg font-bold text-[#172033]">No technicians matched your search</h3>
            <p class="text-xs text-[#526174] max-w-md mx-auto">
                Try selecting "All Technical Skills" or clear filters to view all regional technicians.
            </p>
            <div class="pt-2">
                <asp:Button ID="btnResetNoResults" runat="server" Text="Reset Filters" OnClick="btnReset_Click" CssClass="btn-secondary text-xs py-2.5 px-6 font-bold" />
            </div>
        </asp:Panel>

        <!-- 6. Technician Onboarding CTA -->
        <div class="bg-gradient-to-r from-cyan-50/70 via-white to-cyan-50/70 border border-cyan-200 rounded-3xl p-6 sm:p-8 flex flex-col sm:flex-row items-center justify-between gap-6">
            <div class="space-y-1 text-left">
                <span class="copper-tag bg-cyan-700 text-white border-0">FIELD TECHNICIAN ONBOARDING</span>
                <h4 class="text-lg font-black text-[#172033]">Are you a certified industrial maintenance engineer?</h4>
                <p class="text-xs text-[#526174]">Register your profile, declare specialized technical skills, and connect with manufacturing facilities requiring on-site expertise.</p>
            </div>
            <a href="~/Account/Register.aspx" runat="server" class="btn-primary text-xs py-3 px-6 font-extrabold whitespace-nowrap shrink-0 shadow-xs">
                <i class="fa-solid fa-user-plus mr-1.5"></i> Register as Technician
            </a>
        </div>

    </div>
</asp:Content>
