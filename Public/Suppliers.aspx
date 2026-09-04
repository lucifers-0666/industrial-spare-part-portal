<%@ Page Title="Supplier Directory" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Suppliers.aspx.cs" Inherits="IndustrialSparePartPortal.Public.Suppliers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header-banner text-center space-y-3">
        <span class="copper-badge"><i class="fa-solid fa-warehouse"></i> Supplier Directory</span>
        <h1 class="text-3xl sm:text-4xl font-black text-[#172033]">Compare Regional Spare-Part Suppliers</h1>
        <p class="text-sm text-[#526174] max-w-2xl mx-auto">Compare supplier options across distance, stock availability, and quotation response time.</p>
    </div>

    <div class="max-w-7xl mx-auto px-6 py-16">
        <div class="table-container shadow-md">
            <table class="table-custom">
                <thead>
                    <tr>
                        <th>Supplier Option</th>
                        <th>Verification Status</th>
                        <th>Distance</th>
                        <th>Stock Status</th>
                        <th>Unit Price</th>
                        <th>Response Time</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody class="divide-y divide-[#D9E1EA] text-sm font-medium text-[#172033]">
                    <tr class="hover:bg-slate-50 transition-colors">
                        <td class="font-bold text-[#172033]">
                            Demo Supplier A
                            <span class="block text-xs font-normal text-[#526174] font-mono">Location: Pune, MH</span>
                        </td>
                        <td><span class="badge-pending"><i class="fa-solid fa-clock text-[10px] mr-1"></i> Verification: Demo</span></td>
                        <td class="font-mono text-[#172033]">12 km</td>
                        <td><span class="text-emerald-700 font-bold">In Stock (150 Pcs)</span></td>
                        <td class="font-bold text-[#172033] font-mono text-base">&#8377;42,500</td>
                        <td class="font-mono text-[#1677FF] font-bold">~15 Mins</td>
                        <td><a href="~/Account/Login.aspx" runat="server" class="btn-primary text-xs py-2 px-3">Issue RFQ</a></td>
                    </tr>
                    <tr class="hover:bg-slate-50 transition-colors">
                        <td class="font-bold text-[#172033]">
                            Demo Supplier B
                            <span class="block text-xs font-normal text-[#526174] font-mono">Location: Mumbai, MH</span>
                        </td>
                        <td><span class="badge-pending"><i class="fa-solid fa-clock text-[10px] mr-1"></i> Verification: Demo</span></td>
                        <td class="font-mono text-[#172033]">24 km</td>
                        <td><span class="text-emerald-700 font-bold">In Stock (45 Pcs)</span></td>
                        <td class="font-bold text-[#172033] font-mono text-base">&#8377;43,100</td>
                        <td class="font-mono text-[#1677FF] font-bold">~20 Mins</td>
                        <td><a href="~/Account/Login.aspx" runat="server" class="btn-primary text-xs py-2 px-3">Issue RFQ</a></td>
                    </tr>
                    <tr class="hover:bg-slate-50 transition-colors">
                        <td class="font-bold text-[#172033]">
                            Demo Supplier C
                            <span class="block text-xs font-normal text-[#526174] font-mono">Location: Ahmedabad, GJ</span>
                        </td>
                        <td><span class="badge-pending"><i class="fa-solid fa-clock text-[10px] mr-1"></i> Verification: Demo</span></td>
                        <td class="font-mono text-[#172033]">31 km</td>
                        <td><span class="text-amber-700 font-bold">Limited Stock (8 Pcs)</span></td>
                        <td class="font-bold text-[#172033] font-mono text-base">&#8377;44,000</td>
                        <td class="font-mono text-[#1677FF] font-bold">~30 Mins</td>
                        <td><a href="~/Account/Login.aspx" runat="server" class="btn-primary text-xs py-2 px-3">Issue RFQ</a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>

