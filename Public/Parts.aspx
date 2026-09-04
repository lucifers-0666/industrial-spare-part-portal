<%@ Page Title="Spare Parts Catalog" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Parts.aspx.cs" Inherits="IndustrialSparePartPortal.Public.Parts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header-banner text-center space-y-3">
        <span class="copper-badge"><i class="fa-solid fa-barcode"></i> Industrial Catalog</span>
        <h1 class="text-3xl sm:text-4xl font-black text-[#172033]">Search & Discover Industrial Spare Parts</h1>
        <p class="text-sm text-[#526174] max-w-2xl mx-auto">Explore sample indexed spare parts by OEM part number, machine model, or component category.</p>
    </div>

    <div class="max-w-7xl mx-auto px-6 py-16 space-y-8">
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
            <!-- Part 1 -->
            <div class="content-card space-y-4">
                <div class="flex justify-between items-start">
                    <span class="copper-tag">PART-HYD-001</span>
                    <span class="badge-verified">In Stock</span>
                </div>
                <div>
                    <h4 class="font-bold text-[#172033] text-base">High-Pressure Hydraulic Pump 250Bar</h4>
                    <p class="text-xs text-[#526174] mt-1">Machine: Hydraulic Press 500T</p>
                </div>
                <div class="text-xs text-[#172033] space-y-1 bg-[#F8FAFC] p-3 rounded-xl border border-[#D9E1EA] font-mono">
                    <div>Supplier: Demo Supplier A</div>
                </div>
                <div class="flex justify-between items-center pt-3 border-t border-[#D9E1EA]">
                    <span class="text-lg font-black text-[#172033]">&#8377;42,500</span>
                    <a href="~/Account/Login.aspx" runat="server" class="btn-primary text-xs py-2 px-4">Request Quote</a>
                </div>
            </div>

            <!-- Part 2 -->
            <div class="content-card space-y-4">
                <div class="flex justify-between items-start">
                    <span class="copper-tag">PART-MOT-002</span>
                    <span class="badge-verified">4 Units Left</span>
                </div>
                <div>
                    <h4 class="font-bold text-[#172033] text-base">3-Phase AC Servo Motor 7.5kW</h4>
                    <p class="text-xs text-[#526174] mt-1">Machine: CNC Lathe X200</p>
                </div>
                <div class="text-xs text-[#172033] space-y-1 bg-[#F8FAFC] p-3 rounded-xl border border-[#D9E1EA] font-mono">
                    <div>Supplier: Demo Supplier B</div>
                </div>
                <div class="flex justify-between items-center pt-3 border-t border-[#D9E1EA]">
                    <span class="text-lg font-black text-[#172033]">&#8377;68,000</span>
                    <a href="~/Account/Login.aspx" runat="server" class="btn-primary text-xs py-2 px-4">Request Quote</a>
                </div>
            </div>

            <!-- Part 3 -->
            <div class="content-card space-y-4">
                <div class="flex justify-between items-start">
                    <span class="copper-tag">PART-BRG-003</span>
                    <span class="badge-verified">In Stock</span>
                </div>
                <div>
                    <h4 class="font-bold text-[#172033] text-base">Deep Groove Ball Bearing 6210-2RS</h4>
                    <p class="text-xs text-[#526174] mt-1">Machine: Universal Industrial Shaft</p>
                </div>
                <div class="text-xs text-[#172033] space-y-1 bg-[#F8FAFC] p-3 rounded-xl border border-[#D9E1EA] font-mono">
                    <div>Supplier: Demo Supplier C</div>
                </div>
                <div class="flex justify-between items-center pt-3 border-t border-[#D9E1EA]">
                    <span class="text-lg font-black text-[#172033]">&#8377;1,850</span>
                    <a href="~/Account/Login.aspx" runat="server" class="btn-primary text-xs py-2 px-4">Request Quote</a>
                </div>
            </div>

            <!-- Part 4 -->
            <div class="content-card space-y-4">
                <div class="flex justify-between items-start">
                    <span class="copper-tag">PART-ELE-004</span>
                    <span class="badge-verified">2 Units Left</span>
                </div>
                <div>
                    <h4 class="font-bold text-[#172033] text-base">Industrial VFD Inverter 15kW</h4>
                    <p class="text-xs text-[#526174] mt-1">Machine: Air Compressor 75HP</p>
                </div>
                <div class="text-xs text-[#172033] space-y-1 bg-[#F8FAFC] p-3 rounded-xl border border-[#D9E1EA] font-mono">
                    <div>Supplier: Demo Supplier A</div>
                </div>
                <div class="flex justify-between items-center pt-3 border-t border-[#D9E1EA]">
                    <span class="text-lg font-black text-[#172033]">&#8377;34,200</span>
                    <a href="~/Account/Login.aspx" runat="server" class="btn-primary text-xs py-2 px-4">Request Quote</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

