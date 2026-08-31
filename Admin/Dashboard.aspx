<%@ Page Title="Administrator Governance Dashboard" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="IndustrialSparePartPortal.Admin.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Quick Analytics Stat Cards -->
    <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6 mb-8">
        <div class="card flex items-center gap-4 border-l-4 border-l-blue-600">
            <div class="w-12 h-12 rounded-xl bg-blue-100 text-blue-600 flex items-center justify-center text-xl shrink-0">
                <i class="fa-solid fa-users"></i>
            </div>
            <div>
                <span class="text-xs font-semibold text-slate-500 uppercase tracking-wider block">Total Registered Users</span>
                <span class="text-2xl font-bold text-slate-900" id="lblTotalUsers" runat="server">24</span>
            </div>
        </div>

        <div class="card flex items-center gap-4 border-l-4 border-l-emerald-600">
            <div class="w-12 h-12 rounded-xl bg-emerald-100 text-emerald-600 flex items-center justify-center text-xl shrink-0">
                <i class="fa-solid fa-warehouse"></i>
            </div>
            <div>
                <span class="text-xs font-semibold text-slate-500 uppercase tracking-wider block">Verified Suppliers</span>
                <span class="text-2xl font-bold text-slate-900" id="lblVerifiedSuppliers" runat="server">8</span>
            </div>
        </div>

        <div class="card flex items-center gap-4 border-l-4 border-l-red-600">
            <div class="w-12 h-12 rounded-xl bg-red-100 text-red-600 flex items-center justify-center text-xl shrink-0 animate-pulse">
                <i class="fa-solid fa-triangle-exclamation"></i>
            </div>
            <div>
                <span class="text-xs font-semibold text-slate-500 uppercase tracking-wider block">Active Emergency Alerts</span>
                <span class="text-2xl font-bold text-red-600" id="lblActiveEmergency" runat="server">3</span>
            </div>
        </div>

        <div class="card flex items-center gap-4 border-l-4 border-l-amber-600">
            <div class="w-12 h-12 rounded-xl bg-amber-100 text-amber-600 flex items-center justify-center text-xl shrink-0">
                <i class="fa-solid fa-file-invoice-dollar"></i>
            </div>
            <div>
                <span class="text-xs font-semibold text-slate-500 uppercase tracking-wider block">Open RFQ Quotations</span>
                <span class="text-2xl font-bold text-slate-900" id="lblOpenRfqs" runat="server">14</span>
            </div>
        </div>
    </div>

    <!-- Main Content Section: System Users Overview & Verification Queue -->
    <div class="grid grid-cols-1 lg:grid-cols-12 gap-8">
        <div class="lg:col-span-8">
            <div class="table-container">
                <div class="px-6 py-4 border-b border-slate-200 flex justify-between items-center bg-slate-50">
                    <h3 class="text-sm font-bold text-slate-900 flex items-center gap-2">
                        <i class="fa-solid fa-users text-blue-600"></i> Platform Registered Users
                    </h3>
                    <a href="~/Admin/Users/UserList.aspx" runat="server" class="text-xs font-semibold text-blue-600 hover:text-blue-700">View All Users →</a>
                </div>
                
                <asp:GridView ID="gvUsers" runat="server" AutoGenerateColumns="false" CssClass="table-custom" GridLines="None">
                    <Columns>
                        <asp:BoundField DataField="UserId" HeaderText="ID" HeaderStyle-CssClass="w-12" />
                        <asp:BoundField DataField="FullName" HeaderText="User / Company Name" />
                        <asp:BoundField DataField="Email" HeaderText="Email Address" />
                        <asp:TemplateField HeaderText="Role">
                            <ItemTemplate>
                                <span class="px-2.5 py-0.5 rounded-full text-xs font-semibold bg-slate-100 text-slate-700 border border-slate-200">
                                    <%# Eval("RoleName") %>
                                </span>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Verification">
                            <ItemTemplate>
                                <span class='<%# Convert.ToBoolean(Eval("IsVerified")) ? "badge-verified" : "badge-pending" %>'>
                                    <%# Convert.ToBoolean(Eval("IsVerified")) ? "Verified" : "Pending" %>
                                </span>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="CreatedAt" HeaderText="Registered Date" DataFormatString="{0:dd MMM yyyy}" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>

        <!-- System Governance Quick Actions -->
        <div class="lg:col-span-4 space-y-6">
            <div class="card">
                <h3 class="text-sm font-bold text-slate-900 mb-4 flex items-center gap-2">
                    <i class="fa-solid fa-bolt text-amber-500"></i> Quick Governance Actions
                </h3>
                <div class="space-y-3">
                    <a href="~/Admin/Suppliers/SupplierList.aspx" runat="server" class="btn-secondary w-full justify-start text-xs">
                        <i class="fa-solid fa-user-check text-emerald-600"></i> Review Pending Supplier Applications
                    </a>
                    <a href="~/Admin/EmergencyRequests/EmergencyMonitor.aspx" runat="server" class="btn-secondary w-full justify-start text-xs border-red-200 hover:bg-red-50 text-red-700">
                        <i class="fa-solid fa-triangle-exclamation text-red-600"></i> Audit Breakdown Emergency Dispatch
                    </a>
                    <a href="~/Admin/SpareParts/PartCatalog.aspx" runat="server" class="btn-secondary w-full justify-start text-xs">
                        <i class="fa-solid fa-plus text-blue-600"></i> Add New Master Spare-Part
                    </a>
                </div>
            </div>

            <div class="card bg-slate-900 text-white border-slate-800">
                <h3 class="text-sm font-bold mb-2">System Status</h3>
                <p class="text-xs text-slate-400 mb-4">ASP.NET Web Forms Architecture operating on SQL Server with ADO.NET Data Layer.</p>
                <div class="text-[11px] text-slate-400 font-mono space-y-1 bg-slate-950 p-3 rounded-lg border border-slate-800">
                    <div>Environment: .NET Framework 4.8</div>
                    <div>Database: IndustrialSparePartDB</div>
                    <div>Security: BasePage RBAC Enforcement</div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
