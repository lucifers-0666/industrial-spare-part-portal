<%@ Page Title="Administrator Governance Dashboard" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="IndustrialSparePartPortal.Admin.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Quick Analytics Stat Cards -->
    <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-5 mb-8">
        <div class="surface-card p-5 flex items-center gap-4 border-l-4 border-l-[#1D4ED8]">
            <div class="w-11 h-11 rounded-xl bg-blue-50 text-[#1D4ED8] border border-blue-200 flex items-center justify-center text-lg shrink-0">
                <i class="fa-solid fa-users"></i>
            </div>
            <div>
                <span class="text-[11px] font-mono uppercase text-[#64748B] block">Total Registered Users</span>
                <span class="text-2xl font-black text-[#0F172A] font-mono" id="lblTotalUsers" runat="server">24</span>
            </div>
        </div>

        <div class="surface-card p-5 flex items-center gap-4 border-l-4 border-l-[#059669]">
            <div class="w-11 h-11 rounded-xl bg-emerald-50 text-[#059669] border border-emerald-200 flex items-center justify-center text-lg shrink-0">
                <i class="fa-solid fa-warehouse"></i>
            </div>
            <div>
                <span class="text-[11px] font-mono uppercase text-[#64748B] block">Verified Suppliers</span>
                <span class="text-2xl font-black text-[#0F172A] font-mono" id="lblVerifiedSuppliers" runat="server">8</span>
            </div>
        </div>

        <div class="surface-card p-5 flex items-center gap-4 border-l-4 border-l-[#EA580C]">
            <div class="w-11 h-11 rounded-xl bg-orange-50 text-[#EA580C] border border-orange-200 flex items-center justify-center text-lg shrink-0">
                <i class="fa-solid fa-triangle-exclamation animate-pulse"></i>
            </div>
            <div>
                <span class="text-[11px] font-mono uppercase text-[#64748B] block">Active Emergency Alerts</span>
                <span class="text-2xl font-black text-[#EA580C] font-mono" id="lblActiveEmergency" runat="server">3</span>
            </div>
        </div>

        <div class="surface-card p-5 flex items-center gap-4 border-l-4 border-l-[#B45309]">
            <div class="w-11 h-11 rounded-xl bg-amber-50 text-[#B45309] border border-amber-200 flex items-center justify-center text-lg shrink-0">
                <i class="fa-solid fa-file-invoice-dollar"></i>
            </div>
            <div>
                <span class="text-[11px] font-mono uppercase text-[#64748B] block">Open RFQ Quotations</span>
                <span class="text-2xl font-black text-[#0F172A] font-mono" id="lblOpenRfqs" runat="server">14</span>
            </div>
        </div>
    </div>

    <!-- Main Content Section: System Users Overview & Verification Queue -->
    <div class="grid grid-cols-1 lg:grid-cols-12 gap-8">
        <div class="lg:col-span-8">
            <div class="table-container shadow-xs">
                <div class="px-6 py-4 border-b border-[#CBD5E1] flex justify-between items-center bg-slate-50">
                    <h3 class="text-xs font-bold text-[#0F172A] uppercase tracking-wider flex items-center gap-2 m-0">
                        <i class="fa-solid fa-users text-[#1D4ED8]"></i> Platform Registered User Roster
                    </h3>
                    <a href="~/Admin/Users/UserList.aspx" runat="server" class="text-xs font-bold text-[#1D4ED8] hover:underline">View All Users →</a>
                </div>
                
                <asp:GridView ID="gvUsers" runat="server" AutoGenerateColumns="false" CssClass="table-custom" GridLines="None">
                    <Columns>
                        <asp:BoundField DataField="UserId" HeaderText="ID" HeaderStyle-CssClass="w-12 font-mono" ItemStyle-CssClass="font-mono text-xs" />
                        <asp:BoundField DataField="FullName" HeaderText="Entity / User Name" ItemStyle-CssClass="font-bold text-xs" />
                        <asp:BoundField DataField="Email" HeaderText="Email Address" ItemStyle-CssClass="font-mono text-xs text-[#64748B]" />
                        <asp:TemplateField HeaderText="Role">
                            <ItemTemplate>
                                <span class="spec-tag spec-tag-blue text-[10px]">
                                    <%# Eval("RoleName") %>
                                </span>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Verification">
                            <ItemTemplate>
                                <span class='<%# Convert.ToBoolean(Eval("IsVerified")) ? "status-pill status-pill-verified text-[10px]" : "status-pill status-pill-demo text-[10px]" %>'>
                                    <%# Convert.ToBoolean(Eval("IsVerified")) ? "Verified" : "Pending" %>
                                </span>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="CreatedAt" HeaderText="Date Registered" DataFormatString="{0:dd MMM yyyy}" ItemStyle-CssClass="font-mono text-xs text-[#64748B]" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>

        <!-- System Governance Quick Actions -->
        <div class="lg:col-span-4 space-y-6">
            <div class="surface-card p-6 space-y-4">
                <h3 class="text-xs font-bold text-[#0F172A] uppercase tracking-wider flex items-center gap-2 m-0">
                    <i class="fa-solid fa-bolt text-[#B45309]"></i> Quick Governance Actions
                </h3>
                <div class="space-y-2.5">
                    <a href="~/Admin/Suppliers/SupplierList.aspx" runat="server" class="btn-secondary w-full justify-start text-xs py-2 px-3">
                        <i class="fa-solid fa-user-check text-[#059669]"></i> Review Supplier Applications
                    </a>
                    <a href="~/Admin/EmergencyRequests/EmergencyMonitor.aspx" runat="server" class="btn-secondary w-full justify-start text-xs py-2 px-3 border-orange-200 hover:bg-orange-50 text-[#EA580C]">
                        <i class="fa-solid fa-triangle-exclamation text-[#EA580C]"></i> Audit Emergency Dispatches
                    </a>
                    <a href="~/Admin/SpareParts/PartCatalog.aspx" runat="server" class="btn-secondary w-full justify-start text-xs py-2 px-3">
                        <i class="fa-solid fa-plus text-[#1D4ED8]"></i> Add New Master Part Record
                    </a>
                </div>
            </div>

            <div class="surface-card p-6 bg-[#0F172A] text-white border-slate-700 space-y-3">
                <span class="spec-tag spec-tag-blue text-[10px]">PLATFORM RUNTIME</span>
                <h3 class="text-sm font-bold m-0 text-white">System Architecture</h3>
                <p class="text-xs text-slate-300 m-0 leading-relaxed">ASP.NET Web Forms operating on SQL Server with ADO.NET Data Access Layer.</p>
                <div class="text-[11px] text-slate-400 font-mono space-y-1 bg-slate-950 p-3 rounded-lg border border-slate-800">
                    <div>Environment: .NET Framework 4.8</div>
                    <div>Database: SQL Server (ADO.NET)</div>
                    <div>Security: BasePage RBAC Enforcement</div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
