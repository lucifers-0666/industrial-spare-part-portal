<%@ Page Title="How It Works - Industrial Procurement Workflow" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="HowItWorks.aspx.cs" Inherits="IndustrialSparePartPortal.Public.HowItWorks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <!-- 1. Page Header Banner -->
    <div class="page-header-banner text-center space-y-4 bg-gradient-to-b from-blue-50/60 to-[#F8FAFC] py-14 border-b border-[#D9E1EA]">
        <span class="copper-badge"><i class="fa-solid fa-route text-[#B87333]"></i> Platform Architecture Flow</span>
        <h1 class="text-3xl sm:text-4xl lg:text-5xl font-black text-[#172033] tracking-tight">
            How Industrial Procurement Works
        </h1>
        <p class="text-sm sm:text-base text-[#526174] max-w-3xl mx-auto leading-relaxed">
            A transparent, step-by-step digital procurement and technical assistance network engineered to minimize industrial downtime and streamline quotation exchanges.
        </p>
    </div>

    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-16 space-y-20">
        
        <!-- ======================================================================== -->
        <!-- 2. CORE 8-STEP PROCUREMENT LIFECYCLE                                     -->
        <!-- ======================================================================== -->
        <section class="space-y-8">
            <div class="text-center space-y-2">
                <span class="text-xs font-mono font-bold text-[#1677FF] uppercase tracking-wider">End-to-End Process</span>
                <h2 class="text-2xl sm:text-3xl font-extrabold text-[#172033]">Standard 8-Step Sourcing Workflow</h2>
                <p class="text-xs sm:text-sm text-[#526174] max-w-2xl mx-auto">From initial requirement identification through supplier evaluation and final delivery tracking.</p>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
                
                <!-- Step 1 -->
                <div class="card hover:border-[#1677FF] space-y-3 relative group">
                    <div class="w-10 h-10 rounded-xl bg-blue-50 text-[#1677FF] flex items-center justify-center font-bold text-sm border border-blue-200">
                        01
                    </div>
                    <h3 class="text-base font-bold text-[#172033]">1. Identify Requirement</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">
                        Plant maintenance engineers log machine breakdowns or scheduled replacement needs with OEM part numbers or machine specifications.
                    </p>
                </div>

                <!-- Step 2 -->
                <div class="card hover:border-[#1677FF] space-y-3 relative group">
                    <div class="w-10 h-10 rounded-xl bg-blue-50 text-[#1677FF] flex items-center justify-center font-bold text-sm border border-blue-200">
                        02
                    </div>
                    <h3 class="text-base font-bold text-[#172033]">2. Search Catalog</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">
                        Query the indexed catalog by part number, machine model, or industrial category to cross-reference technical tolerances.
                    </p>
                </div>

                <!-- Step 3 -->
                <div class="card hover:border-[#1677FF] space-y-3 relative group">
                    <div class="w-10 h-10 rounded-xl bg-blue-50 text-[#1677FF] flex items-center justify-center font-bold text-sm border border-blue-200">
                        03
                    </div>
                    <h3 class="text-base font-bold text-[#172033]">3. Compare Suppliers</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">
                        Evaluate regional suppliers across real-time stock availability, unit prices, distance, and historical fulfillment ratings.
                    </p>
                </div>

                <!-- Step 4 -->
                <div class="card hover:border-[#1677FF] space-y-3 relative group">
                    <div class="w-10 h-10 rounded-xl bg-blue-50 text-[#1677FF] flex items-center justify-center font-bold text-sm border border-blue-200">
                        04
                    </div>
                    <h3 class="text-base font-bold text-[#172033]">4. Request Quotation</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">
                        Submit an official Request for Quotation (RFQ) with quantity requirements, target delivery dates, and commercial terms.
                    </p>
                </div>

                <!-- Step 5 -->
                <div class="card hover:border-[#1677FF] space-y-3 relative group">
                    <div class="w-10 h-10 rounded-xl bg-emerald-50 text-emerald-700 flex items-center justify-center font-bold text-sm border border-emerald-200">
                        05
                    </div>
                    <h3 class="text-base font-bold text-[#172033]">5. Supplier Responds</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">
                        Verified suppliers review RFQs and submit competitive quotation responses detailing unit pricing and lead times.
                    </p>
                </div>

                <!-- Step 6 -->
                <div class="card hover:border-[#1677FF] space-y-3 relative group">
                    <div class="w-10 h-10 rounded-xl bg-emerald-50 text-emerald-700 flex items-center justify-center font-bold text-sm border border-emerald-200">
                        06
                    </div>
                    <h3 class="text-base font-bold text-[#172033]">6. Select Best Quote</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">
                        Factory buyers evaluate quotation responses side-by-side and accept the optimal offer directly within the dashboard.
                    </p>
                </div>

                <!-- Step 7 -->
                <div class="card hover:border-[#1677FF] space-y-3 relative group">
                    <div class="w-10 h-10 rounded-xl bg-emerald-50 text-emerald-700 flex items-center justify-center font-bold text-sm border border-emerald-200">
                        07
                    </div>
                    <h3 class="text-base font-bold text-[#172033]">7. Order Confirmation</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">
                        Issue formalized purchase orders with dispatch schedules and delivery logistics tracked transparently.
                    </p>
                </div>

                <!-- Step 8 -->
                <div class="card hover:border-emerald-500 bg-emerald-50/40 border-emerald-200 space-y-3 relative group">
                    <div class="w-10 h-10 rounded-xl bg-emerald-100 text-emerald-800 flex items-center justify-center font-bold text-sm border border-emerald-300">
                        08
                    </div>
                    <h3 class="text-base font-bold text-[#172033]">8. Delivery & Service</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">
                        Track shipment milestone updates, confirm receipt of parts, or schedule certified on-site technician installation.
                    </p>
                </div>

            </div>
        </section>

        <!-- ======================================================================== -->
        <!-- 3. EMERGENCY PROCUREMENT WORKFLOW                                        -->
        <!-- ======================================================================== -->
        <section class="bg-gradient-to-br from-orange-50/60 via-white to-amber-50/60 border border-orange-200 rounded-3xl p-8 sm:p-12 space-y-8">
            <div class="flex flex-col md:flex-row items-start md:items-center justify-between gap-6 pb-6 border-b border-orange-200/80">
                <div class="space-y-1">
                    <span class="inline-flex items-center gap-2 px-3 py-1 rounded-full text-xs font-black bg-[#F97316] text-white uppercase tracking-wider">
                        <i class="fa-solid fa-bolt animate-pulse"></i> Critical Breakdown
                    </span>
                    <h2 class="text-2xl sm:text-3xl font-black text-[#172033]">Emergency Breakdown Protocol</h2>
                    <p class="text-xs sm:text-sm text-[#526174]">When assembly lines stop, emergency sourcing bypasses traditional multi-day negotiations.</p>
                </div>
                <a href="~/Public/Emergency.aspx" runat="server" class="btn-emergency text-xs py-3 px-6 font-extrabold whitespace-nowrap shadow-md shrink-0">
                    <i class="fa-solid fa-triangle-exclamation mr-1.5"></i> Emergency Desk
                </a>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-4 gap-6 text-xs">
                <div class="bg-white p-5 rounded-2xl border border-orange-100 space-y-2">
                    <div class="w-8 h-8 rounded-lg bg-orange-100 text-[#F97316] flex items-center justify-center font-bold">1</div>
                    <strong class="text-sm font-bold text-[#172033] block">Broadcast Alert</strong>
                    <p class="text-[#526174]">Factory flags an urgent machine breakdown with exact part numbers and critical timeline constraints.</p>
                </div>
                <div class="bg-white p-5 rounded-2xl border border-orange-100 space-y-2">
                    <div class="w-8 h-8 rounded-lg bg-orange-100 text-[#F97316] flex items-center justify-center font-bold">2</div>
                    <strong class="text-sm font-bold text-[#172033] block">Instant Supplier Match</strong>
                    <p class="text-[#526174]">The platform immediately identifies local suppliers with ready-to-ship inventory stock.</p>
                </div>
                <div class="bg-white p-5 rounded-2xl border border-orange-100 space-y-2">
                    <div class="w-8 h-8 rounded-lg bg-orange-100 text-[#F97316] flex items-center justify-center font-bold">3</div>
                    <strong class="text-sm font-bold text-[#172033] block">Priority Quote & Acceptance</strong>
                    <p class="text-[#526174]">Suppliers respond with immediate fulfillment capacity, expedited courier terms, and pricing.</p>
                </div>
                <div class="bg-white p-5 rounded-2xl border border-orange-100 space-y-2">
                    <div class="w-8 h-8 rounded-lg bg-orange-100 text-[#F97316] flex items-center justify-center font-bold">4</div>
                    <strong class="text-sm font-bold text-[#172033] block">Same-Day Dispatch</strong>
                    <p class="text-[#526174]">High-priority dispatch tracking commences, with on-call technicians notified for immediate fitting.</p>
                </div>
            </div>
        </section>

        <!-- ======================================================================== -->
        <!-- 4. TECHNICIAN & VERIFICATION WORKFLOWS (2-COLUMN CARDS)                  -->
        <!-- ======================================================================== -->
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-8">
            
            <!-- Technician Workflow -->
            <div class="bg-white border border-[#D9E1EA] rounded-3xl p-8 space-y-6 shadow-xs">
                <div class="flex items-center gap-3">
                    <div class="w-10 h-10 rounded-xl bg-cyan-100 text-cyan-800 flex items-center justify-center font-bold text-lg">
                        <i class="fa-solid fa-wrench"></i>
                    </div>
                    <div>
                        <h3 class="text-lg font-bold text-[#172033]">Technician Service Protocol</h3>
                        <span class="text-xs text-[#526174]">Connecting plants with qualified maintenance specialists</span>
                    </div>
                </div>

                <div class="space-y-3 text-xs">
                    <div class="p-3.5 bg-[#F8FAFC] rounded-xl border border-[#D9E1EA] flex items-center gap-3">
                        <span class="w-6 h-6 rounded-full bg-cyan-100 text-cyan-800 flex items-center justify-center font-bold text-xs shrink-0">1</span>
                        <span><strong>Discovery:</strong> Filter service profiles by technical discipline (PLC, CNC, Hydraulics).</span>
                    </div>
                    <div class="p-3.5 bg-[#F8FAFC] rounded-xl border border-[#D9E1EA] flex items-center gap-3">
                        <span class="w-6 h-6 rounded-full bg-cyan-100 text-cyan-800 flex items-center justify-center font-bold text-xs shrink-0">2</span>
                        <span><strong>Schedule Request:</strong> Submit machine fault descriptions and requested service dates.</span>
                    </div>
                    <div class="p-3.5 bg-[#F8FAFC] rounded-xl border border-[#D9E1EA] flex items-center gap-3">
                        <span class="w-6 h-6 rounded-full bg-cyan-100 text-cyan-800 flex items-center justify-center font-bold text-xs shrink-0">3</span>
                        <span><strong>On-Site Execution:</strong> Technician undertakes diagnostic repair and part installation.</span>
                    </div>
                    <div class="p-3.5 bg-emerald-50 rounded-xl border border-emerald-200 flex items-center gap-3 text-emerald-900">
                        <span class="w-6 h-6 rounded-full bg-emerald-200 text-emerald-900 flex items-center justify-center font-bold text-xs shrink-0">4</span>
                        <span><strong>Service Completion:</strong> Plant signs off on machine restoration and logs review ratings.</span>
                    </div>
                </div>

                <div class="pt-2">
                    <a href="~/Public/Technicians.aspx" runat="server" class="text-xs text-[#1677FF] font-bold hover:underline">
                        Explore Technician Network &rarr;
                    </a>
                </div>
            </div>

            <!-- Verification & Governance Workflow -->
            <div class="bg-white border border-[#D9E1EA] rounded-3xl p-8 space-y-6 shadow-xs">
                <div class="flex items-center gap-3">
                    <div class="w-10 h-10 rounded-xl bg-amber-100 text-[#B87333] flex items-center justify-center font-bold text-lg">
                        <i class="fa-solid fa-shield-halved"></i>
                    </div>
                    <div>
                        <h3 class="text-lg font-bold text-[#172033]">Governance & Verification Flow</h3>
                        <span class="text-xs text-[#526174]">Ensuring supplier transparency and commercial integrity</span>
                    </div>
                </div>

                <div class="space-y-3 text-xs">
                    <div class="p-3.5 bg-[#F8FAFC] rounded-xl border border-[#D9E1EA] flex items-center gap-3">
                        <span class="w-6 h-6 rounded-full bg-amber-100 text-amber-800 flex items-center justify-center font-bold text-xs shrink-0">1</span>
                        <span><strong>Entity Registration:</strong> Business entity registers with role credential declarations.</span>
                    </div>
                    <div class="p-3.5 bg-[#F8FAFC] rounded-xl border border-[#D9E1EA] flex items-center gap-3">
                        <span class="w-6 h-6 rounded-full bg-amber-100 text-amber-800 flex items-center justify-center font-bold text-xs shrink-0">2</span>
                        <span><strong>Document Submission:</strong> Business registration and capability credentials submitted.</span>
                    </div>
                    <div class="p-3.5 bg-[#F8FAFC] rounded-xl border border-[#D9E1EA] flex items-center gap-3">
                        <span class="w-6 h-6 rounded-full bg-amber-100 text-amber-800 flex items-center justify-center font-bold text-xs shrink-0">3</span>
                        <span><strong>Admin Audit:</strong> Platform administrators audit submission authenticity and accuracy.</span>
                    </div>
                    <div class="p-3.5 bg-emerald-50 rounded-xl border border-emerald-200 flex items-center gap-3 text-emerald-900">
                        <span class="w-6 h-6 rounded-full bg-emerald-200 text-emerald-900 flex items-center justify-center font-bold text-xs shrink-0">4</span>
                        <span><strong>Verified Credential:</strong> Verified badge activated on public profiles to instill buyer confidence.</span>
                    </div>
                </div>

                <div class="pt-2">
                    <a href="~/Public/Suppliers.aspx" runat="server" class="text-xs text-[#1677FF] font-bold hover:underline">
                        View Verified Suppliers &rarr;
                    </a>
                </div>
            </div>

        </div>

        <!-- ======================================================================== -->
        <!-- 5. CALL TO ACTION STRIP                                                  -->
        <!-- ======================================================================== -->
        <div class="bg-[#172033] text-white rounded-3xl p-8 sm:p-12 text-center space-y-6 shadow-xl">
            <h2 class="text-2xl sm:text-3xl font-black tracking-tight">Ready to streamline your industrial sourcing?</h2>
            <p class="text-xs sm:text-sm text-slate-300 max-w-2xl mx-auto">
                Join our B2B procurement network to discover certified spare parts, compare regional supplier pricing, or register as a supplier.
            </p>
            <div class="flex flex-col sm:flex-row items-center justify-center gap-4 pt-2">
                <a href="~/Account/Register.aspx" runat="server" class="btn-primary text-xs py-3.5 px-8 font-extrabold w-full sm:w-auto text-center">
                    <i class="fa-solid fa-user-plus mr-1.5"></i> Register Portal Account
                </a>
                <a href="~/Public/Parts.aspx" runat="server" class="btn-secondary text-xs py-3.5 px-8 font-bold w-full sm:w-auto text-center">
                    Browse Parts Catalog
                </a>
            </div>
        </div>

    </div>
</asp:Content>
