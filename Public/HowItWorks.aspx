<%@ Page Title="How It Works - Procurement Workflow" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="HowItWorks.aspx.cs" Inherits="IndustrialSparePartPortal.Public.HowItWorks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header-banner text-center space-y-3">
        <span class="copper-badge"><i class="fa-solid fa-route"></i> Industrial Workflow</span>
        <h1 class="text-3xl sm:text-4xl font-black text-[#172033]">How Industrial Procurement Works</h1>
        <p class="text-sm text-[#526174] max-w-2xl mx-auto">Discover the 6-step workflow connecting industrial plants, verified suppliers, and certified technicians.</p>
    </div>

    <div class="max-w-7xl mx-auto px-6 py-16">
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
            <div class="content-card space-y-3">
                <span class="text-xs font-mono font-bold text-[#1677FF] bg-blue-50 px-2.5 py-1 rounded-md">STEP 01</span>
                <h3 class="text-lg font-bold text-[#172033]">01. Spare-Part Search</h3>
                <p class="text-xs text-[#526174]">Search by OEM part number, machine model, or category. Cross-reference part specifications across indexed inventories.</p>
            </div>
            <div class="content-card space-y-3">
                <span class="text-xs font-mono font-bold text-[#1677FF] bg-blue-50 px-2.5 py-1 rounded-md">STEP 02</span>
                <h3 class="text-lg font-bold text-[#172033]">02. Supplier Comparison</h3>
                <p class="text-xs text-[#526174]">Compare supplier options across distance, stock availability, unit pricing, and estimated response times.</p>
            </div>
            <div class="content-card space-y-3">
                <span class="text-xs font-mono font-bold text-[#1677FF] bg-blue-50 px-2.5 py-1 rounded-md">STEP 03</span>
                <h3 class="text-lg font-bold text-[#172033]">03. Quotation Request (RFQ)</h3>
                <p class="text-xs text-[#526174]">Issue formal RFQs or broadcast emergency breakdown sourcing alerts to registered regional suppliers.</p>
            </div>
            <div class="content-card space-y-3">
                <span class="text-xs font-mono font-bold text-[#1677FF] bg-blue-50 px-2.5 py-1 rounded-md">STEP 04</span>
                <h3 class="text-lg font-bold text-[#172033]">04. Connect & Match</h3>
                <p class="text-xs text-[#526174]">Receive supplier quotation responses and discover field service technicians for installation and repair.</p>
            </div>
            <div class="content-card space-y-3">
                <span class="text-xs font-mono font-bold text-[#1677FF] bg-blue-50 px-2.5 py-1 rounded-md">STEP 05</span>
                <h3 class="text-lg font-bold text-[#172033]">05. Order Procurement</h3>
                <p class="text-xs text-[#526174]">Confirm quote selections, specify delivery terms, and issue purchase orders securely through the portal.</p>
            </div>
            <div class="content-card space-y-3 bg-emerald-50/50 border-emerald-200">
                <span class="text-xs font-mono font-bold text-emerald-800 bg-emerald-100 px-2.5 py-1 rounded-md">STEP 06</span>
                <h3 class="text-lg font-bold text-[#172033]">06. Fulfillment Tracking</h3>
                <p class="text-xs text-[#526174]">Track order status, delivery progress, and service technician visit schedules until resolution.</p>
            </div>
        </div>
    </div>
</asp:Content>

