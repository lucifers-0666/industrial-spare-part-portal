<%@ Page Title="Spare Parts Catalog - Public Discovery" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Parts.aspx.cs" Inherits="IndustrialSparePartPortal.Public.Parts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <!-- 1. Page Header Banner -->
    <div class="page-header-banner text-center space-y-4 bg-gradient-to-b from-blue-50/60 to-[#F8FAFC] py-14 border-b border-[#D9E1EA]">
        <span class="copper-badge"><i class="fa-solid fa-barcode text-[#B87333]"></i> Industrial Spare-Part Catalog</span>
        <h1 class="text-3xl sm:text-4xl lg:text-5xl font-black text-[#172033] tracking-tight">
            Search & Discover Industrial Spare Parts
        </h1>
        <p class="text-sm sm:text-base text-[#526174] max-w-3xl mx-auto leading-relaxed">
            Search indexed components by OEM part number, machine model, or industrial category. Review technical tolerances, stock status, and request official quotations.
        </p>
    </div>

    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12 space-y-10">
        
        <!-- 2. Search & Filter Bar Card -->
        <div class="bg-white p-6 sm:p-8 rounded-3xl border border-[#D9E1EA] shadow-xs space-y-6">
            <div class="flex flex-col md:flex-row items-stretch md:items-center gap-4">
                
                <!-- Search Box -->
                <div class="relative flex-1">
                    <i class="fa-solid fa-magnifying-glass absolute left-4 top-3.5 text-slate-400"></i>
                    <asp:TextBox ID="txtSearch" runat="server" CssClass="w-full pl-11 pr-4 py-3 bg-[#F8FAFC] border border-[#D9E1EA] rounded-xl text-sm text-[#172033] placeholder-slate-400 focus:bg-white focus:outline-none focus:border-[#1677FF] transition-all" Placeholder="Search by Part No (e.g. 6210-2RS, PART-HYD), Machine, or Keyword..."></asp:TextBox>
                </div>

                <!-- Category Filter -->
                <div class="w-full md:w-64">
                    <asp:DropDownList ID="ddlCategory" runat="server" CssClass="w-full px-4 py-3 bg-[#F8FAFC] border border-[#D9E1EA] rounded-xl text-sm text-[#172033] focus:bg-white focus:outline-none focus:border-[#1677FF] transition-all">
                        <asp:ListItem Value="" Text="All Categories"></asp:ListItem>
                        <asp:ListItem Value="Hydraulics & Pneumatics" Text="Hydraulics & Pneumatics"></asp:ListItem>
                        <asp:ListItem Value="Motors & Drives" Text="Motors & Drives"></asp:ListItem>
                        <asp:ListItem Value="Bearings & Power Transmission" Text="Bearings & Power Transmission"></asp:ListItem>
                        <asp:ListItem Value="Electrical & Automation" Text="Electrical & Automation"></asp:ListItem>
                        <asp:ListItem Value="Pumps & Valves" Text="Pumps & Valves"></asp:ListItem>
                    </asp:DropDownList>
                </div>

                <!-- Buttons -->
                <div class="flex items-center gap-3 shrink-0">
                    <asp:Button ID="btnSearch" runat="server" Text="Search Catalog" OnClick="btnSearch_Click" CssClass="btn-primary text-xs py-3 px-6 font-extrabold cursor-pointer" />
                    <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" CssClass="btn-secondary text-xs py-3 px-5 font-bold cursor-pointer" />
                </div>

            </div>

            <!-- Quick Category Badges -->
            <div class="flex flex-wrap items-center gap-2 pt-2 border-t border-[#D9E1EA] text-xs text-[#526174]">
                <span class="font-bold text-[#172033]">Quick Filters:</span>
                <asp:LinkButton ID="btnFilterHydraulics" runat="server" OnClick="btnQuickFilter_Click" CommandArgument="Hydraulics & Pneumatics" CssClass="px-3 py-1 rounded-full bg-slate-100 hover:bg-blue-50 hover:text-[#1677FF] transition-colors">Hydraulics</asp:LinkButton>
                <asp:LinkButton ID="btnFilterMotors" runat="server" OnClick="btnQuickFilter_Click" CommandArgument="Motors & Drives" CssClass="px-3 py-1 rounded-full bg-slate-100 hover:bg-blue-50 hover:text-[#1677FF] transition-colors">Motors & Drives</asp:LinkButton>
                <asp:LinkButton ID="btnFilterBearings" runat="server" OnClick="btnQuickFilter_Click" CommandArgument="Bearings & Power Transmission" CssClass="px-3 py-1 rounded-full bg-slate-100 hover:bg-blue-50 hover:text-[#1677FF] transition-colors">Bearings</asp:LinkButton>
                <asp:LinkButton ID="btnFilterElectrical" runat="server" OnClick="btnQuickFilter_Click" CommandArgument="Electrical & Automation" CssClass="px-3 py-1 rounded-full bg-slate-100 hover:bg-blue-50 hover:text-[#1677FF] transition-colors">Electrical & Automation</asp:LinkButton>
            </div>
        </div>

        <!-- 3. Results Header Status -->
        <div class="flex justify-between items-center text-xs text-[#526174] px-1">
            <div>
                <asp:Label ID="lblResultsCount" runat="server" CssClass="font-bold text-[#172033]"></asp:Label>
            </div>
            <div class="flex items-center gap-2">
                <span class="w-2 h-2 rounded-full bg-emerald-500"></span>
                <span>Live Catalog Index</span>
            </div>
        </div>

        <!-- 4. Parts Grid Area -->
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
            <asp:Repeater ID="rptParts" runat="server">
                <ItemTemplate>
                    <div class="card hover:border-[#1677FF] flex flex-col justify-between space-y-4 shadow-xs">
                        
                        <!-- Card Header -->
                        <div class="space-y-2">
                            <div class="flex justify-between items-start gap-2">
                                <span class="copper-tag"><%# Eval("PartNumber") %></span>
                                <span class='<%# Eval("AvailabilityStatus").ToString() == "InStock" ? "badge-verified" : "badge-pending" %>'>
                                    <i class='fa-solid <%# Eval("AvailabilityStatus").ToString() == "InStock" ? "fa-circle-check text-emerald-600" : "fa-clock text-amber-600" %> mr-1'></i>
                                    <%# Eval("AvailabilityStatus").ToString() == "InStock" ? "In Stock" : "Pre-Order" %>
                                </span>
                            </div>

                            <div class="pt-1">
                                <span class="text-[10px] font-bold text-[#1677FF] uppercase tracking-wider block"><%# Eval("CategoryName") %></span>
                                <h3 class="font-bold text-[#172033] text-base leading-snug"><%# Eval("PartName") %></h3>
                            </div>

                            <div class="text-xs text-[#526174]">
                                <span>Compatible Machine:</span>
                                <strong class="text-[#172033] block font-semibold"><%# Eval("MachineName") %></strong>
                            </div>
                        </div>

                        <!-- Technical Specs Summary -->
                        <div class="bg-[#F8FAFC] p-3 rounded-xl border border-[#D9E1EA] text-xs text-[#526174] space-y-1 font-mono">
                            <div class="text-[11px]"><%# Eval("TechnicalSpecs") %></div>
                            <div class="text-[10px] text-slate-400">Supplier: <%# Eval("SupplierName") %></div>
                        </div>

                        <!-- Card Footer -->
                        <div class="flex justify-between items-center pt-3 border-t border-[#D9E1EA]">
                            <div>
                                <span class="text-[10px] text-[#526174] block">Indicative Unit Price</span>
                                <span class="text-lg font-black text-[#172033]">
                                    &#8377;<%# Convert.ToDecimal(Eval("UnitPrice")).ToString("N0") %>
                                </span>
                            </div>
                            <a href='<%# ResolveUrl("~/Account/Login.aspx?returnUrl=" + Server.UrlEncode("~/Public/Parts.aspx")) %>' class="btn-primary text-xs py-2.5 px-4 font-bold">
                                Request Quote
                            </a>
                        </div>

                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>

        <!-- 5. No Results State -->
        <asp:Panel ID="pnlNoResults" runat="server" Visible="false" CssClass="text-center py-16 bg-white border border-[#D9E1EA] rounded-3xl space-y-4">
            <div class="w-14 h-14 mx-auto rounded-full bg-slate-100 flex items-center justify-center text-slate-400 text-2xl">
                <i class="fa-solid fa-magnifying-glass"></i>
            </div>
            <h3 class="text-lg font-bold text-[#172033]">No spare parts matched your search</h3>
            <p class="text-xs text-[#526174] max-w-md mx-auto">
                Try searching with broader terms, check your OEM part number, or clear filters to view the full indexed catalog.
            </p>
            <div class="pt-2">
                <asp:Button ID="btnResetNoResults" runat="server" Text="Reset Filters" OnClick="btnReset_Click" CssClass="btn-secondary text-xs py-2.5 px-6 font-bold" />
            </div>
        </asp:Panel>

        <!-- 6. Emergency CTA Card -->
        <div class="bg-gradient-to-r from-orange-500/10 via-amber-500/5 to-orange-500/10 border border-orange-200 rounded-3xl p-6 sm:p-8 flex flex-col sm:flex-row items-center justify-between gap-6">
            <div class="space-y-1 text-left">
                <span class="copper-tag bg-[#F97316] text-white border-0">CRITICAL BREAKDOWN?</span>
                <h4 class="text-lg font-black text-[#172033]">Can't find your specific part number?</h4>
                <p class="text-xs text-[#526174]">Submit an emergency breakdown broadcast to alert regional certified suppliers directly.</p>
            </div>
            <a href="~/Public/Emergency.aspx" runat="server" class="btn-emergency text-xs py-3 px-6 font-extrabold whitespace-nowrap shrink-0 shadow-xs">
                <i class="fa-solid fa-bolt mr-1.5"></i> Broadcast Emergency RFQ
            </a>
        </div>

    </div>
</asp:Content>
