<%@ Page Title="Why Us - Ecosystem Differentiators" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="WhyUs.aspx.cs" Inherits="IndustrialSparePartPortal.Public.WhyUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header-banner text-center space-y-3">
        <span class="copper-badge"><i class="fa-solid fa-layer-group"></i> Ecosystem Integration</span>
        <h1 class="text-3xl sm:text-4xl font-black text-[#172033]">More Than a Spare-Part Marketplace</h1>
        <p class="text-sm text-[#526174] max-w-2xl mx-auto">Discover why connecting factories, suppliers, and technicians on one platform accelerates procurement.</p>
    </div>

    <div class="max-w-7xl mx-auto px-6 py-16 space-y-12">
        <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
            <div class="content-card space-y-4">
                <div class="w-12 h-12 rounded-2xl bg-blue-100 text-[#1677FF] flex items-center justify-center font-bold text-2xl">
                    <i class="fa-solid fa-industry"></i>
                </div>
                <h3 class="text-xl font-bold text-[#172033]">Factories & Industrial Buyers</h3>
                <p class="text-xs text-[#526174] leading-relaxed">Designed to enable factories to discover spare parts, compare supplier options, submit quotation requests, and find nearby technical expertise.</p>
            </div>
            <div class="content-card space-y-4">
                <div class="w-12 h-12 rounded-2xl bg-emerald-100 text-emerald-700 flex items-center justify-center font-bold text-2xl">
                    <i class="fa-solid fa-warehouse"></i>
                </div>
                <h3 class="text-xl font-bold text-[#172033]">Spare-Part Suppliers</h3>
                <p class="text-xs text-[#526174] leading-relaxed">Designed to allow suppliers to manage inventory, display stock availability, respond to quotation requests, and fulfill urgent procurement needs.</p>
            </div>
            <div class="content-card space-y-4">
                <div class="w-12 h-12 rounded-2xl bg-cyan-100 text-cyan-700 flex items-center justify-center font-bold text-2xl">
                    <i class="fa-solid fa-wrench"></i>
                </div>
                <h3 class="text-xl font-bold text-[#172033]">Technicians & Service Providers</h3>
                <p class="text-xs text-[#526174] leading-relaxed">Designed to connect technical specialists with industrial buyers seeking on-site installation, maintenance, and machine repair services.</p>
            </div>
        </div>
    </div>
</asp:Content>

