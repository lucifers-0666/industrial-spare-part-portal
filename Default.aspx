<%@ Page Title="Industrial Spare-Part Finder & Emergency Procurement Portal" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IndustrialSparePartPortal.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .light-blue-glow {
            background: radial-gradient(circle at 50% 50%, rgba(22, 119, 255, 0.08) 0%, rgba(248, 250, 252, 0) 70%);
        }
        .orange-accent-glow {
            box-shadow: 0 10px 30px -5px rgba(249, 115, 22, 0.25);
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- ============================================================================ -->
    <!-- SECTION 1: HERO EXPERIENCE — BRIGHT LIGHT INDUSTRIAL PRODUCT SHOWCASE        -->
    <!-- ============================================================================ -->
    <section class="relative bg-[#F8FAFC] text-[#172033] overflow-hidden pt-12 pb-20 lg:pt-16 lg:pb-24 bg-grid-pattern-light border-b border-[#D9E1EA]">
        <div class="absolute top-1/3 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[700px] h-[700px] light-blue-glow pointer-events-none"></div>

        <div class="max-w-8xl mx-auto px-6 lg:px-12 relative z-10">
            <div class="grid grid-cols-1 lg:grid-cols-12 gap-12 items-center">
                <!-- Left Column: Hero Content -->
                <div class="lg:col-span-7 space-y-7 text-left">
                    <div class="inline-flex items-center gap-2.5 px-4 py-2 rounded-full text-xs font-bold bg-blue-50 text-[#1677FF] border border-blue-200 shadow-xs">
                        <i class="fa-solid fa-layer-group text-[#1677FF]"></i>
                        <span class="tracking-wider uppercase">INDUSTRIAL PROCUREMENT PLATFORM</span>
                    </div>

                    <h1 class="text-4xl sm:text-5xl lg:text-6xl font-black tracking-tight text-[#172033] leading-none">
                        Find the Right Industrial Part. <span class="text-[#1677FF]">Faster.</span>
                    </h1>

                    <p class="text-base sm:text-lg text-[#526174] max-w-2xl leading-relaxed font-normal">
                        Find spare parts, compare supplier options, request quotations and connect with technical expertise through one connected industrial procurement platform.
                    </p>

                    <!-- Primary & Emergency CTAs -->
                    <div class="flex flex-col sm:flex-row items-stretch sm:items-center gap-4 pt-2">
                        <a href="#parts-catalog" class="btn-primary text-base py-4 px-8 font-extrabold shadow-md">
                            <i class="fa-solid fa-magnifying-glass"></i> Find Spare Parts
                        </a>
                        <a href="#emergency" class="btn-emergency text-base py-4 px-8 font-extrabold orange-accent-glow">
                            <i class="fa-solid fa-bolt"></i> Emergency Procurement
                        </a>
                    </div>

                    <!-- Capability Indicators (No Fake Stat Counters) -->
                    <div class="grid grid-cols-2 sm:grid-cols-4 gap-4 pt-8 border-t border-[#D9E1EA]">
                        <div class="bg-white p-4 rounded-2xl border border-[#D9E1EA] shadow-xs space-y-1">
                            <div class="text-[#1677FF] font-bold text-sm flex items-center gap-1.5">
                                <i class="fa-solid fa-barcode"></i> Part Discovery
                            </div>
                            <span class="text-xs text-[#526174] font-medium block">OEM & Machine Search</span>
                        </div>
                        <div class="bg-white p-4 rounded-2xl border border-[#D9E1EA] shadow-xs space-y-1">
                            <div class="text-emerald-700 font-bold text-sm flex items-center gap-1.5">
                                <i class="fa-solid fa-warehouse"></i> Supplier Compare
                            </div>
                            <span class="text-xs text-[#526174] font-medium block">Price & Stock Matrix</span>
                        </div>
                        <div class="bg-white p-4 rounded-2xl border border-[#D9E1EA] shadow-xs space-y-1">
                            <div class="text-[#F97316] font-bold text-sm flex items-center gap-1.5">
                                <i class="fa-solid fa-bolt"></i> Urgent Requests
                            </div>
                            <span class="text-xs text-[#526174] font-medium block">Breakdown Sourcing</span>
                        </div>
                        <div class="bg-white p-4 rounded-2xl border border-[#D9E1EA] shadow-xs space-y-1">
                            <div class="text-cyan-700 font-bold text-sm flex items-center gap-1.5">
                                <i class="fa-solid fa-wrench"></i> Technical Support
                            </div>
                            <span class="text-xs text-[#526174] font-medium block">Field Service Profiles</span>
                        </div>
                    </div>
                </div>

                <!-- Right Column: Demonstration Product UI Visual -->
                <div class="lg:col-span-5">
                    <div class="bg-white border-2 border-[#D9E1EA] rounded-3xl p-6 shadow-xl space-y-5">
                        <div class="flex items-center justify-between border-b border-[#D9E1EA] pb-4">
                            <div class="flex items-center gap-3">
                                <div class="w-3 h-3 rounded-full bg-emerald-500 animate-pulse"></div>
                                <span class="text-xs font-bold text-[#172033] uppercase tracking-wider">Demonstration Interface</span>
                            </div>
                            <span class="copper-tag">SAMPLE PREVIEW</span>
                        </div>

                        <!-- Product Search Context Card -->
                        <div class="bg-[#F1F5F9] p-3.5 rounded-2xl border border-[#D9E1EA] space-y-2">
                            <div class="text-[11px] font-mono text-[#526174] flex justify-between">
                                <span>Search Query:</span>
                                <span class="text-[#1677FF] font-bold">Deep Groove Ball Bearing</span>
                            </div>
                            <div class="bg-white text-[#172033] px-3.5 py-2.5 rounded-xl text-xs font-mono font-bold flex items-center justify-between border border-[#D9E1EA] shadow-xs">
                                <span>6204-2RS Ball Bearing</span>
                                <span class="bg-blue-100 text-[#1677FF] px-2 py-0.5 rounded text-[10px]">OEM MATCHED</span>
                            </div>
                        </div>

                        <!-- 3 Demo Supplier Result Rows -->
                        <div class="space-y-3">
                            <div class="bg-slate-50 p-4 rounded-2xl border border-[#D9E1EA] flex items-center justify-between hover:border-[#1677FF] transition-all">
                                <div>
                                    <div class="text-xs font-bold text-[#172033] flex items-center gap-2">
                                        Demo Supplier A
                                        <span class="badge-pending text-[9px] py-0 px-1.5">Verification: Demo</span>
                                    </div>
                                    <div class="text-[11px] text-[#526174] font-mono mt-0.5">Distance: 12 km | In Stock (150 Pcs)</div>
                                </div>
                                <div class="text-right">
                                    <span class="text-sm font-extrabold text-[#172033] block">&#8377;1,249</span>
                                    <span class="text-[10px] text-emerald-600 font-mono font-bold">Quotation Ready</span>
                                </div>
                            </div>

                            <div class="bg-slate-50 p-4 rounded-2xl border border-[#D9E1EA] flex items-center justify-between hover:border-[#1677FF] transition-all">
                                <div>
                                    <div class="text-xs font-bold text-[#172033] flex items-center gap-2">
                                        Demo Supplier B
                                        <span class="badge-pending text-[9px] py-0 px-1.5">Verification: Demo</span>
                                    </div>
                                    <div class="text-[11px] text-[#526174] font-mono mt-0.5">Distance: 24 km | In Stock (45 Pcs)</div>
                                </div>
                                <div class="text-right">
                                    <span class="text-sm font-extrabold text-[#172033] block">&#8377;1,290</span>
                                    <span class="text-[10px] text-[#1677FF] font-mono font-bold">Quotation Ready</span>
                                </div>
                            </div>

                            <div class="bg-slate-50 p-4 rounded-2xl border border-[#D9E1EA] flex items-center justify-between hover:border-[#1677FF] transition-all">
                                <div>
                                    <div class="text-xs font-bold text-[#172033] flex items-center gap-2">
                                        Demo Supplier C
                                        <span class="badge-pending text-[9px] py-0 px-1.5">Verification: Demo</span>
                                    </div>
                                    <div class="text-[11px] text-[#526174] font-mono mt-0.5">Distance: 31 km | Limited Stock</div>
                                </div>
                                <div class="text-right">
                                    <span class="text-sm font-extrabold text-[#172033] block">&#8377;1,320</span>
                                    <span class="text-[10px] text-slate-500 font-mono font-bold">Quotation Ready</span>
                                </div>
                            </div>
                        </div>

                        <div class="pt-3 border-t border-[#D9E1EA] flex items-center justify-between text-xs text-[#526174]">
                            <span>Available Technicians: <strong class="text-[#172033]">Sample Profiles Available</strong></span>
                            <a href="#supplier-comparison" class="text-[#1677FF] hover:underline font-bold">Compare Options →</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ============================================================================ -->
    <!-- SECTION 2: PROBLEM — MACHINE DOWN? PROCUREMENT SHOULDN'T SLOW YOU DOWN        -->
    <!-- ============================================================================ -->
    <section class="py-20 bg-white border-b border-[#D9E1EA]" id="problem-solution">
        <div class="max-w-8xl mx-auto px-6 lg:px-12">
            <div class="text-center max-w-3xl mx-auto mb-16 space-y-3">
                <span class="copper-badge"><i class="fa-solid fa-triangle-exclamation"></i> Industrial Bottlenecks</span>
                <h2 class="text-3xl sm:text-4xl lg:text-5xl font-black text-[#172033] tracking-tight">
                    Machine Down? Procurement Shouldn't Slow You Down.
                </h2>
                <p class="text-base sm:text-lg text-[#526174] leading-relaxed max-w-2xl mx-auto">
                    Traditional industrial spare-part sourcing relies on manual phone calls, unverified stock levels, and unknown OEM part numbers.
                </p>
            </div>

            <!-- Visual Comparison: Traditional vs Platform Process -->
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-10 items-stretch">
                <!-- Traditional Process Card -->
                <div class="bg-red-50/60 border-2 border-red-200 rounded-3xl p-8 lg:p-10 space-y-6">
                    <div class="flex items-center justify-between border-b border-red-200 pb-4">
                        <div class="flex items-center gap-3 text-red-800">
                            <div class="w-12 h-12 rounded-2xl bg-red-100 flex items-center justify-center text-2xl font-bold">
                                <i class="fa-solid fa-xmark"></i>
                            </div>
                            <div>
                                <h3 class="text-xl font-bold text-[#172033]">Traditional Process</h3>
                                <p class="text-xs text-red-700 font-semibold">Fragmented & Manual</p>
                            </div>
                        </div>
                        <span class="bg-red-600 text-white text-xs font-extrabold uppercase px-3 py-1 rounded-md">MANUAL DELAYS</span>
                    </div>

                    <div class="space-y-4 text-sm text-[#172033]">
                        <div class="flex items-start gap-3">
                            <i class="fa-solid fa-xmark text-red-600 text-base shrink-0 mt-1"></i>
                            <div><strong>Unknown Part Identification:</strong> Maintenance team guesses replacement specifications without OEM cross-referencing.</div>
                        </div>
                        <div class="flex items-start gap-3">
                            <i class="fa-solid fa-xmark text-red-600 text-base shrink-0 mt-1"></i>
                            <div><strong>Manual Supplier Calls:</strong> Calling vendors one-by-one to ask about stock availability and lead times.</div>
                        </div>
                        <div class="flex items-start gap-3">
                            <i class="fa-solid fa-xmark text-red-600 text-base shrink-0 mt-1"></i>
                            <div><strong>Unclear Pricing:</strong> Difficult price comparisons and slow manual quotation collection.</div>
                        </div>
                        <div class="flex items-start gap-3">
                            <i class="fa-solid fa-xmark text-red-600 text-base shrink-0 mt-1"></i>
                            <div><strong>Service Coordination Gaps:</strong> Spare part arrives, but finding qualified technical support requires separate outreach.</div>
                        </div>
                    </div>
                </div>

                <!-- Platform Process Card -->
                <div class="bg-blue-50/60 border-2 border-blue-200 rounded-3xl p-8 lg:p-10 space-y-6">
                    <div class="flex items-center justify-between border-b border-blue-200 pb-4">
                        <div class="flex items-center gap-3">
                            <div class="w-12 h-12 rounded-2xl bg-[#1677FF] text-white flex items-center justify-center text-2xl font-bold shadow-sm">
                                <i class="fa-solid fa-bolt"></i>
                            </div>
                            <div>
                                <h3 class="text-xl font-bold text-[#172033]">Platform-Based Process</h3>
                                <p class="text-xs text-emerald-700 font-semibold">Structured & Connected</p>
                            </div>
                        </div>
                        <span class="bg-emerald-600 text-white text-xs font-extrabold uppercase px-3 py-1 rounded-md">CONNECTED</span>
                    </div>

                    <div class="space-y-4 text-sm text-[#172033]">
                        <div class="flex items-start gap-3">
                            <i class="fa-solid fa-check text-emerald-600 text-base shrink-0 mt-1"></i>
                            <div><strong>Part # & Machine Name Search:</strong> Instantly search part numbers or machine models across indexed categories.</div>
                        </div>
                        <div class="flex items-start gap-3">
                            <i class="fa-solid fa-check text-emerald-600 text-base shrink-0 mt-1"></i>
                            <div><strong>Supplier Comparison Matrix:</strong> Compare supplier inventory, pricing, and distance side-by-side.</div>
                        </div>
                        <div class="flex items-start gap-3">
                            <i class="fa-solid fa-check text-emerald-600 text-base shrink-0 mt-1"></i>
                            <div><strong>Quotation & Emergency Requests:</strong> Request standard supplier quotes or submit urgent breakdown sourcing alerts.</div>
                        </div>
                        <div class="flex items-start gap-3">
                            <i class="fa-solid fa-check text-emerald-600 text-base shrink-0 mt-1"></i>
                            <div><strong>Technician Discovery:</strong> Connect with technical service providers based on skill and location alongside parts.</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ============================================================================ -->
    <!-- SECTION 3: WHY THIS PLATFORM ("MORE THAN A SPARE-PART MARKETPLACE")           -->
    <!-- ============================================================================ -->
    <section class="py-20 bg-[#F1F5F9] border-b border-[#D9E1EA]" id="differentiators">
        <div class="max-w-8xl mx-auto px-6 lg:px-12">
            <div class="text-center max-w-3xl mx-auto mb-16 space-y-3">
                <span class="copper-badge"><i class="fa-solid fa-layer-group"></i> Ecosystem Integration</span>
                <h2 class="text-3xl sm:text-4xl lg:text-5xl font-black text-[#172033] tracking-tight">
                    More Than a Spare-Part Marketplace.
                </h2>
                <p class="text-base sm:text-lg text-[#526174] leading-relaxed max-w-2xl mx-auto">
                    The platform is designed to bring multiple participants of the industrial procurement lifecycle together.
                </p>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                <div class="bg-white p-8 rounded-3xl border border-[#D9E1EA] shadow-xs space-y-4">
                    <div class="w-12 h-12 rounded-2xl bg-blue-100 text-[#1677FF] flex items-center justify-center font-bold text-2xl">
                        <i class="fa-solid fa-industry"></i>
                    </div>
                    <h3 class="text-xl font-bold text-[#172033]">Factories & Industrial Buyers</h3>
                    <p class="text-sm text-[#526174] leading-relaxed">
                        Designed to enable factories to discover spare parts, compare supplier options, submit quotation requests, and find nearby technical expertise.
                    </p>
                </div>

                <div class="bg-white p-8 rounded-3xl border border-[#D9E1EA] shadow-xs space-y-4">
                    <div class="w-12 h-12 rounded-2xl bg-emerald-100 text-emerald-700 flex items-center justify-center font-bold text-2xl">
                        <i class="fa-solid fa-warehouse"></i>
                    </div>
                    <h3 class="text-xl font-bold text-[#172033]">Spare-Part Suppliers</h3>
                    <p class="text-sm text-[#526174] leading-relaxed">
                        Designed to allow suppliers to manage inventory, display stock availability, respond to quotation requests, and fulfill urgent procurement needs.
                    </p>
                </div>

                <div class="bg-white p-8 rounded-3xl border border-[#D9E1EA] shadow-xs space-y-4">
                    <div class="w-12 h-12 rounded-2xl bg-cyan-100 text-cyan-700 flex items-center justify-center font-bold text-2xl">
                        <i class="fa-solid fa-wrench"></i>
                    </div>
                    <h3 class="text-xl font-bold text-[#172033]">Technicians & Service Providers</h3>
                    <p class="text-sm text-[#526174] leading-relaxed">
                        Designed to connect technical specialists with industrial buyers seeking on-site installation, maintenance, and machine repair services.
                    </p>
                </div>
            </div>
        </div>
    </section>

    <!-- ============================================================================ -->
    <!-- SECTION 4: SERVICES OVERVIEW                                                -->
    <!-- ============================================================================ -->
    <section class="py-20 bg-white border-b border-[#D9E1EA]" id="services">
        <div class="max-w-8xl mx-auto px-6 lg:px-12">
            <div class="text-center max-w-3xl mx-auto mb-16 space-y-3">
                <span class="copper-badge"><i class="fa-solid fa-gears"></i> Core Capabilities</span>
                <h2 class="text-3xl sm:text-4xl lg:text-5xl font-black text-[#172033] tracking-tight">
                    Planned Platform Services
                </h2>
                <p class="text-base sm:text-lg text-[#526174] leading-relaxed max-w-2xl mx-auto">
                    A comprehensive overview of planned functional modules designed for the industrial procurement network.
                </p>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
                <div class="bg-[#F8FAFC] border border-[#D9E1EA] p-6 rounded-2xl space-y-2 hover:border-[#1677FF] transition-all">
                    <i class="fa-solid fa-barcode text-[#1677FF] text-xl"></i>
                    <h4 class="font-bold text-[#172033] text-base">Industrial Part Discovery</h4>
                    <p class="text-xs text-[#526174]">Search by part number, machine model, or category.</p>
                </div>

                <div class="bg-[#F8FAFC] border border-[#D9E1EA] p-6 rounded-2xl space-y-2 hover:border-[#1677FF] transition-all">
                    <i class="fa-solid fa-code-compare text-emerald-700 text-xl"></i>
                    <h4 class="font-bold text-[#172033] text-base">Supplier Comparison</h4>
                    <p class="text-xs text-[#526174]">Compare price, stock availability, and distance.</p>
                </div>

                <div class="bg-[#F8FAFC] border border-[#D9E1EA] p-6 rounded-2xl space-y-2 hover:border-[#1677FF] transition-all">
                    <i class="fa-solid fa-file-signature text-amber-700 text-xl"></i>
                    <h4 class="font-bold text-[#172033] text-base">Quotation Management</h4>
                    <p class="text-xs text-[#526174]">Issue RFQs and receive supplier quotation responses.</p>
                </div>

                <div class="bg-[#F8FAFC] border border-[#D9E1EA] p-6 rounded-2xl space-y-2 hover:border-[#1677FF] transition-all">
                    <i class="fa-solid fa-bolt text-[#F97316] text-xl"></i>
                    <h4 class="font-bold text-[#172033] text-base">Emergency Procurement</h4>
                    <p class="text-xs text-[#526174]">Submit urgent breakdown sourcing requirements.</p>
                </div>

                <div class="bg-[#F8FAFC] border border-[#D9E1EA] p-6 rounded-2xl space-y-2 hover:border-[#1677FF] transition-all">
                    <i class="fa-solid fa-wrench text-cyan-700 text-xl"></i>
                    <h4 class="font-bold text-[#172033] text-base">Technician Discovery</h4>
                    <p class="text-xs text-[#526174]">Search service providers by skill and location.</p>
                </div>

                <div class="bg-[#F8FAFC] border border-[#D9E1EA] p-6 rounded-2xl space-y-2 hover:border-[#1677FF] transition-all">
                    <i class="fa-solid fa-chart-line text-indigo-700 text-xl"></i>
                    <h4 class="font-bold text-[#172033] text-base">Request Tracking</h4>
                    <p class="text-xs text-[#526174]">Track procurement order and service status.</p>
                </div>

                <div class="bg-[#F8FAFC] border border-[#D9E1EA] p-6 rounded-2xl space-y-2 hover:border-[#1677FF] transition-all">
                    <i class="fa-solid fa-clock-rotate-left text-purple-700 text-xl"></i>
                    <h4 class="font-bold text-[#172033] text-base">Service History</h4>
                    <p class="text-xs text-[#526174]">Maintain past order logs and service visit records.</p>
                </div>

                <div class="bg-[#F8FAFC] border border-[#D9E1EA] p-6 rounded-2xl space-y-2 hover:border-[#1677FF] transition-all">
                    <i class="fa-solid fa-headset text-red-700 text-xl"></i>
                    <h4 class="font-bold text-[#172033] text-base">Complaint Management</h4>
                    <p class="text-xs text-[#526174]">Submit dispute tickets for admin assistance.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- ============================================================================ -->
    <!-- SECTION 5: HOW IT WORKS (6 CONTINUOUS STEPS)                                -->
    <!-- ============================================================================ -->
    <section class="py-20 bg-[#F8FAFC] border-b border-[#D9E1EA]" id="how-it-works">
        <div class="max-w-8xl mx-auto px-6 lg:px-12">
            <div class="text-center max-w-3xl mx-auto mb-16 space-y-3">
                <span class="copper-badge"><i class="fa-solid fa-route"></i> Procurement Workflow</span>
                <h2 class="text-3xl sm:text-4xl lg:text-5xl font-black text-[#172033] tracking-tight">
                    How Industrial Procurement Works
                </h2>
                <p class="text-base sm:text-lg text-[#526174] leading-relaxed max-w-2xl mx-auto">
                    Follow the continuous 6-step workflow designed to simplify industrial sourcing.
                </p>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-6 gap-6">
                <div class="bg-white border border-[#D9E1EA] p-6 rounded-2xl space-y-3 hover:border-[#1677FF] transition-all shadow-xs">
                    <span class="text-xs font-mono font-bold text-[#1677FF] bg-blue-50 px-2.5 py-1 rounded-md">STEP 01</span>
                    <h3 class="text-base font-bold text-[#172033]">01. Search</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">Search by part number, machine model, or category.</p>
                </div>

                <div class="bg-white border border-[#D9E1EA] p-6 rounded-2xl space-y-3 hover:border-[#1677FF] transition-all shadow-xs">
                    <span class="text-xs font-mono font-bold text-[#1677FF] bg-blue-50 px-2.5 py-1 rounded-md">STEP 02</span>
                    <h3 class="text-base font-bold text-[#172033]">02. Compare</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">Compare supplier availability, price, and distance.</p>
                </div>

                <div class="bg-white border border-[#D9E1EA] p-6 rounded-2xl space-y-3 hover:border-[#1677FF] transition-all shadow-xs">
                    <span class="text-xs font-mono font-bold text-[#1677FF] bg-blue-50 px-2.5 py-1 rounded-md">STEP 03</span>
                    <h3 class="text-base font-bold text-[#172033]">03. Request</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">Issue quotation requests or submit urgent breakdown alerts.</p>
                </div>

                <div class="bg-white border border-[#D9E1EA] p-6 rounded-2xl space-y-3 hover:border-[#1677FF] transition-all shadow-xs">
                    <span class="text-xs font-mono font-bold text-[#1677FF] bg-blue-50 px-2.5 py-1 rounded-md">STEP 04</span>
                    <h3 class="text-base font-bold text-[#172033]">04. Connect</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">Receive supplier responses & discover service technicians.</p>
                </div>

                <div class="bg-white border border-[#D9E1EA] p-6 rounded-2xl space-y-3 hover:border-[#1677FF] transition-all shadow-xs">
                    <span class="text-xs font-mono font-bold text-[#1677FF] bg-blue-50 px-2.5 py-1 rounded-md">STEP 05</span>
                    <h3 class="text-base font-bold text-[#172033]">05. Procure</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">Select the best quote option and confirm order placement.</p>
                </div>

                <div class="bg-emerald-50 border border-emerald-200 p-6 rounded-2xl space-y-3 shadow-xs">
                    <span class="text-xs font-mono font-bold text-emerald-800 bg-emerald-100 px-2.5 py-1 rounded-md">STEP 06</span>
                    <h3 class="text-base font-bold text-[#172033]">06. Track</h3>
                    <p class="text-xs text-emerald-900 leading-relaxed">Track order and service status until completion.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- ============================================================================ -->
    <!-- SECTION 6: SPARE-PART SEARCH DEMO                                           -->
    <!-- ============================================================================ -->
    <section class="py-20 bg-white border-b border-[#D9E1EA]" id="parts-catalog">
        <div class="max-w-8xl mx-auto px-6 lg:px-12">
            <!-- Search Input Box Showcase -->
            <div class="bg-[#F8FAFC] p-4 rounded-3xl border border-[#D9E1EA] shadow-md mb-12 max-w-4xl space-y-3">
                <div class="flex items-center gap-2 border-b border-[#D9E1EA] pb-3 text-xs font-bold text-[#172033]">
                    <span class="copper-tag">SEARCH BY WHAT YOU KNOW</span>
                    <span class="text-[#1677FF]"><i class="fa-solid fa-barcode"></i> Part Number</span>
                    <span class="text-slate-300">|</span>
                    <span class="text-[#526174]"><i class="fa-solid fa-industry"></i> Machine Name</span>
                    <span class="text-slate-300">|</span>
                    <span class="text-[#526174]"><i class="fa-solid fa-boxes-stacked"></i> Category</span>
                </div>
                <div class="flex flex-col sm:flex-row gap-3">
                    <div class="relative flex-1">
                        <i class="fa-solid fa-magnifying-glass absolute left-4 top-4 text-slate-400 text-base"></i>
                        <asp:TextBox ID="txtSearchQuery" runat="server" CssClass="w-full pl-12 pr-4 py-3.5 text-[#172033] placeholder-slate-400 text-sm font-medium focus:outline-none bg-white rounded-xl border border-[#D9E1EA]" Placeholder="Search catalog e.g., 6204 Bearing, CNC Lathe, PART-HYD-001..."></asp:TextBox>
                    </div>
                    <asp:Button ID="btnSearch" runat="server" Text="Search Catalog" OnClick="btnSearch_Click" CssClass="btn-primary py-3.5 px-8 text-sm font-extrabold rounded-xl shrink-0" />
                </div>
            </div>

            <div class="flex flex-col md:flex-row md:items-end justify-between mb-12 gap-6">
                <div>
                    <span class="copper-badge mb-3"><i class="fa-solid fa-magnifying-glass"></i> Search Demo</span>
                    <h2 class="text-3xl sm:text-4xl font-black text-[#172033]">Search by What You Know</h2>
                    <p class="text-sm text-[#526174] mt-1">Sample catalog demonstration displaying spare-part indexing.</p>
                </div>

                <!-- Category Filter Buttons -->
                <div class="flex flex-wrap gap-2 text-xs font-bold">
                    <button type="button" class="px-4 py-2 rounded-xl bg-[#1677FF] text-white shadow-xs" onclick="filterParts('all')">All Categories</button>
                    <button type="button" class="px-4 py-2 rounded-xl bg-slate-100 border border-[#D9E1EA] text-[#172033] hover:bg-slate-200" onclick="filterParts('hydraulics')">Hydraulics</button>
                    <button type="button" class="px-4 py-2 rounded-xl bg-slate-100 border border-[#D9E1EA] text-[#172033] hover:bg-slate-200" onclick="filterParts('motors')">Motors & Drives</button>
                    <button type="button" class="px-4 py-2 rounded-xl bg-slate-100 border border-[#D9E1EA] text-[#172033] hover:bg-slate-200" onclick="filterParts('bearings')">Bearings</button>
                </div>
            </div>

            <!-- Demo Parts Grid -->
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8" id="partsContainer">
                <!-- Part 1 -->
                <div class="card hover:shadow-lg transition-all border-[#D9E1EA] space-y-4 part-card" data-cat="hydraulics">
                    <div class="flex justify-between items-start">
                        <span class="copper-tag">PART-HYD-001</span>
                        <span class="badge-verified">In Stock</span>
                    </div>
                    <div>
                        <h4 class="font-bold text-[#172033] text-base">High-Pressure Hydraulic Pump 250Bar</h4>
                        <p class="text-xs text-[#526174] mt-1">Machine: Hydraulic Press 500T</p>
                    </div>
                    <div class="text-xs text-[#172033] space-y-1 bg-[#F8FAFC] p-3 rounded-xl border border-[#D9E1EA] font-mono">
                        <div>Flow: 45 L/min | Pressure: 250 Bar</div>
                        <div>Supplier: Demo Supplier A</div>
                    </div>
                    <div class="flex justify-between items-center pt-3 border-t border-[#D9E1EA]">
                        <span class="text-lg font-black text-[#172033]">&#8377;42,500</span>
                        <a href="~/Account/Login.aspx" runat="server" class="btn-primary text-xs py-2 px-4">Request Quote</a>
                    </div>
                </div>

                <!-- Part 2 -->
                <div class="card hover:shadow-lg transition-all border-[#D9E1EA] space-y-4 part-card" data-cat="motors">
                    <div class="flex justify-between items-start">
                        <span class="copper-tag">PART-MOT-002</span>
                        <span class="badge-verified">4 Units Left</span>
                    </div>
                    <div>
                        <h4 class="font-bold text-[#172033] text-base">3-Phase AC Servo Motor 7.5kW</h4>
                        <p class="text-xs text-[#526174] mt-1">Machine: CNC Lathe X200</p>
                    </div>
                    <div class="text-xs text-[#172033] space-y-1 bg-[#F8FAFC] p-3 rounded-xl border border-[#D9E1EA] font-mono">
                        <div>Power: 7.5kW | RPM: 3000 | 415V</div>
                        <div>Supplier: Demo Supplier B</div>
                    </div>
                    <div class="flex justify-between items-center pt-3 border-t border-[#D9E1EA]">
                        <span class="text-lg font-black text-[#172033]">&#8377;68,000</span>
                        <a href="~/Account/Login.aspx" runat="server" class="btn-primary text-xs py-2 px-4">Request Quote</a>
                    </div>
                </div>

                <!-- Part 3 -->
                <div class="card hover:shadow-lg transition-all border-[#D9E1EA] space-y-4 part-card" data-cat="bearings">
                    <div class="flex justify-between items-start">
                        <span class="copper-tag">PART-BRG-003</span>
                        <span class="badge-verified">In Stock</span>
                    </div>
                    <div>
                        <h4 class="font-bold text-[#172033] text-base">Deep Groove Ball Bearing 6210-2RS</h4>
                        <p class="text-xs text-[#526174] mt-1">Machine: Universal Industrial Shaft</p>
                    </div>
                    <div class="text-xs text-[#172033] space-y-1 bg-[#F8FAFC] p-3 rounded-xl border border-[#D9E1EA] font-mono">
                        <div>Specs: 50mm x 90mm x 20mm</div>
                        <div>Supplier: Demo Supplier C</div>
                    </div>
                    <div class="flex justify-between items-center pt-3 border-t border-[#D9E1EA]">
                        <span class="text-lg font-black text-[#172033]">&#8377;1,850</span>
                        <a href="~/Account/Login.aspx" runat="server" class="btn-primary text-xs py-2 px-4">Request Quote</a>
                    </div>
                </div>

                <!-- Part 4 -->
                <div class="card hover:shadow-lg transition-all border-[#D9E1EA] space-y-4 part-card" data-cat="motors">
                    <div class="flex justify-between items-start">
                        <span class="copper-tag">PART-ELE-004</span>
                        <span class="badge-verified">2 Units Left</span>
                    </div>
                    <div>
                        <h4 class="font-bold text-[#172033] text-base">Industrial VFD Inverter 15kW</h4>
                        <p class="text-xs text-[#526174] mt-1">Machine: Air Compressor 75HP</p>
                    </div>
                    <div class="text-xs text-[#172033] space-y-1 bg-[#F8FAFC] p-3 rounded-xl border border-[#D9E1EA] font-mono">
                        <div>Input: 3-Phase 415V | 0-400Hz</div>
                        <div>Supplier: Demo Supplier A</div>
                    </div>
                    <div class="flex justify-between items-center pt-3 border-t border-[#D9E1EA]">
                        <span class="text-lg font-black text-[#172033]">&#8377;34,200</span>
                        <a href="~/Account/Login.aspx" runat="server" class="btn-primary text-xs py-2 px-4">Request Quote</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ============================================================================ -->
    <!-- SECTION 7: SUPPLIER COMPARISON DEMO TABLE                                   -->
    <!-- ============================================================================ -->
    <section class="py-20 bg-[#F8FAFC] border-b border-[#D9E1EA]" id="supplier-comparison">
        <div class="max-w-8xl mx-auto px-6 lg:px-12">
            <div class="text-center max-w-3xl mx-auto mb-16 space-y-3">
                <span class="copper-badge"><i class="fa-solid fa-code-compare"></i> Options Comparison</span>
                <h2 class="text-3xl sm:text-4xl lg:text-5xl font-black text-[#172033] tracking-tight">
                    Supplier Comparison Matrix
                </h2>
                <p class="text-base sm:text-lg text-[#526174] leading-relaxed max-w-2xl mx-auto">
                    Compare supplier options across distance, stock status, unit pricing, and quotation response time.
                </p>
            </div>

            <!-- B2B Procurement Table Interface -->
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
    </section>

    <!-- ============================================================================ -->
    <!-- SECTION 8: EMERGENCY PROCUREMENT DEMO                                      -->
    <!-- ============================================================================ -->
    <section class="py-20 bg-gradient-to-br from-amber-500/10 via-orange-500/5 to-amber-500/10 text-[#172033] border-b border-[#D9E1EA] relative overflow-hidden" id="emergency">
        <div class="max-w-8xl mx-auto px-6 lg:px-12 relative z-10">
            <div class="bg-white border-2 border-orange-300 rounded-3xl p-8 sm:p-12 shadow-xl space-y-8">
                <div class="grid grid-cols-1 lg:grid-cols-12 gap-10 items-center">
                    <div class="lg:col-span-8 space-y-6">
                        <div class="inline-flex items-center gap-2.5 px-4 py-1.5 rounded-full text-xs font-black bg-[#F97316] text-white uppercase tracking-wider shadow-xs">
                            <i class="fa-solid fa-triangle-exclamation animate-pulse"></i> Emergency Procurement
                        </div>

                        <h2 class="text-4xl sm:text-5xl font-black text-[#172033] leading-tight">
                            MACHINE DOWN? Start an Emergency Request.
                        </h2>

                        <p class="text-base sm:text-lg text-[#526174] leading-relaxed font-normal max-w-2xl">
                            Start an urgent spare-part request and provide the part or machine information needed for sourcing.
                        </p>

                        <div class="grid grid-cols-1 sm:grid-cols-3 gap-4 pt-2 text-xs font-bold text-[#172033]">
                            <div class="flex items-center gap-2">
                                <i class="fa-solid fa-circle-check text-[#F97316] text-base"></i>
                                <span>Urgent Part Sourcing Prompt</span>
                            </div>
                            <div class="flex items-center gap-2">
                                <i class="fa-solid fa-circle-check text-[#F97316] text-base"></i>
                                <span>Nearby Supplier Alerting</span>
                            </div>
                            <div class="flex items-center gap-2">
                                <i class="fa-solid fa-circle-check text-[#F97316] text-base"></i>
                                <span>Technician Discovery Link</span>
                            </div>
                        </div>
                    </div>

                    <div class="lg:col-span-4 text-center lg:text-right space-y-4">
                        <a href="~/Account/Login.aspx?redirect=emergency" runat="server" class="btn-emergency w-full py-5 text-lg font-black rounded-2xl shadow-xl block text-center">
                            <i class="fa-solid fa-bolt text-xl"></i> Start Emergency Request
                        </a>
                        <p class="text-xs text-[#526174] font-medium">
                            Demo Support: <strong class="text-[#172033] font-mono text-sm">1800-000-0000</strong>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ============================================================================ -->
    <!-- SECTION 9: TECHNICIAN NETWORK DEMO                                          -->
    <!-- ============================================================================ -->
    <section class="py-20 bg-white border-b border-[#D9E1EA]" id="technicians">
        <div class="max-w-8xl mx-auto px-6 lg:px-12">
            <div class="text-center max-w-3xl mx-auto mb-16 space-y-3">
                <span class="copper-badge"><i class="fa-solid fa-wrench"></i> Technical Support</span>
                <h2 class="text-3xl sm:text-4xl lg:text-5xl font-black text-[#172033] tracking-tight">
                    Parts + Technical Expertise in One Platform
                </h2>
                <p class="text-base sm:text-lg text-[#526174] leading-relaxed max-w-2xl mx-auto">
                    Sample technician profiles demonstrating skill-based and location-based discovery.
                </p>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                <!-- Tech Card 1 -->
                <div class="card hover:shadow-lg transition-all border-[#D9E1EA] space-y-4">
                    <div class="flex items-center justify-between">
                        <div class="flex items-center gap-3">
                            <div class="w-12 h-12 rounded-2xl bg-cyan-100 text-cyan-800 flex items-center justify-center font-bold text-xl">
                                <i class="fa-solid fa-user-gear"></i>
                            </div>
                            <div>
                                <h4 class="font-bold text-[#172033] text-base">Sample Technician A</h4>
                                <span class="text-xs text-[#526174] font-medium"><i class="fa-solid fa-location-dot text-slate-400"></i> Rajkot, GJ</span>
                            </div>
                        </div>
                        <span class="badge-verified"><i class="fa-solid fa-circle text-[8px] text-emerald-600 mr-1.5"></i> Available — Demo</span>
                    </div>

                    <div class="bg-[#F8FAFC] p-4 rounded-xl border border-[#D9E1EA] space-y-1 text-xs">
                        <div class="font-bold text-[#172033]">Specialized Skillset:</div>
                        <p class="text-[#526174]">Mechanical Maintenance, Pump Overhaul & Alignment</p>
                    </div>

                    <div class="flex justify-between items-center pt-3 border-t border-[#D9E1EA] text-xs font-mono">
                        <span class="text-[#526174]">Status: <strong class="text-[#172033]">Demo Profile</strong></span>
                        <span class="text-lg font-black text-cyan-800">&#8377;1,200/hr</span>
                    </div>
                </div>

                <!-- Tech Card 2 -->
                <div class="card hover:shadow-lg transition-all border-[#D9E1EA] space-y-4">
                    <div class="flex items-center justify-between">
                        <div class="flex items-center gap-3">
                            <div class="w-12 h-12 rounded-2xl bg-blue-100 text-[#1677FF] flex items-center justify-center font-bold text-xl">
                                <i class="fa-solid fa-microchip"></i>
                            </div>
                            <div>
                                <h4 class="font-bold text-[#172033] text-base">Sample Technician B</h4>
                                <span class="text-xs text-[#526174] font-medium"><i class="fa-solid fa-location-dot text-slate-400"></i> Ahmedabad, GJ</span>
                            </div>
                        </div>
                        <span class="badge-verified"><i class="fa-solid fa-circle text-[8px] text-emerald-600 mr-1.5"></i> Available — Demo</span>
                    </div>

                    <div class="bg-[#F8FAFC] p-4 rounded-xl border border-[#D9E1EA] space-y-1 text-xs">
                        <div class="font-bold text-[#172033]">Specialized Skillset:</div>
                        <p class="text-[#526174]">Hydraulic Systems, CNC Lathe Servo Motor Servicing</p>
                    </div>

                    <div class="flex justify-between items-center pt-3 border-t border-[#D9E1EA] text-xs font-mono">
                        <span class="text-[#526174]">Status: <strong class="text-[#172033]">Demo Profile</strong></span>
                        <span class="text-lg font-black text-[#1677FF]">&#8377;1,500/hr</span>
                    </div>
                </div>

                <!-- Tech Card 3 -->
                <div class="card hover:shadow-lg transition-all border-[#D9E1EA] space-y-4">
                    <div class="flex items-center justify-between">
                        <div class="flex items-center gap-3">
                            <div class="w-12 h-12 rounded-2xl bg-amber-100 text-amber-800 flex items-center justify-center font-bold text-xl">
                                <i class="fa-solid fa-bolt"></i>
                            </div>
                            <div>
                                <h4 class="font-bold text-[#172033] text-base">Sample Technician C</h4>
                                <span class="text-xs text-[#526174] font-medium"><i class="fa-solid fa-location-dot text-slate-400"></i> Vadodara, GJ</span>
                            </div>
                        </div>
                        <span class="badge-pending"><i class="fa-solid fa-circle text-[8px] text-amber-600 mr-1.5"></i> Unavailable — Demo</span>
                    </div>

                    <div class="bg-[#F8FAFC] p-4 rounded-xl border border-[#D9E1EA] space-y-1 text-xs">
                        <div class="font-bold text-[#172033]">Specialized Skillset:</div>
                        <p class="text-[#526174]">Industrial Electrical, VFD Inverter Commissioning</p>
                    </div>

                    <div class="flex justify-between items-center pt-3 border-t border-[#D9E1EA] text-xs font-mono">
                        <span class="text-[#526174]">Status: <strong class="text-[#172033]">Demo Profile</strong></span>
                        <span class="text-lg font-black text-amber-800">&#8377;1,000/hr</span>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ============================================================================ -->
    <!-- SECTION 10: VERIFICATION WORKFLOW CONCEPT                                   -->
    <!-- ============================================================================ -->
    <section class="py-20 bg-[#F8FAFC] border-b border-[#D9E1EA]">
        <div class="max-w-8xl mx-auto px-6 lg:px-12">
            <div class="grid grid-cols-1 lg:grid-cols-12 gap-12 items-center">
                <div class="lg:col-span-6 space-y-6">
                    <span class="copper-badge"><i class="fa-solid fa-shield-halved"></i> Verification Concept</span>
                    <h2 class="text-3xl sm:text-4xl lg:text-5xl font-black text-[#172033] tracking-tight">
                        Verification & Governance Workflow
                    </h2>
                    <p class="text-base text-[#526174] leading-relaxed max-w-xl">
                        The platform architecture incorporates administrative verification steps for suppliers and technicians.
                    </p>

                    <div class="space-y-4 text-xs font-medium text-[#172033]">
                        <div class="flex items-start gap-3.5">
                            <i class="fa-solid fa-circle-check text-emerald-600 text-lg shrink-0 mt-0.5"></i>
                            <div>
                                <strong class="text-[#172033] block font-bold text-sm">Registration & Profile Submission:</strong>
                                Suppliers and service providers submit entity details during portal account creation.
                            </div>
                        </div>
                        <div class="flex items-start gap-3.5">
                            <i class="fa-solid fa-circle-check text-emerald-600 text-lg shrink-0 mt-0.5"></i>
                            <div>
                                <strong class="text-[#172033] block font-bold text-sm">Administrator Document Review:</strong>
                                System administrators review submitted business documentation within the Admin Dashboard.
                            </div>
                        </div>
                        <div class="flex items-start gap-3.5">
                            <i class="fa-solid fa-circle-check text-emerald-600 text-lg shrink-0 mt-0.5"></i>
                            <div>
                                <strong class="text-[#172033] block font-bold text-sm">Verification Status Activation:</strong>
                                Approved accounts receive verified status badges to build buyer trust across the network.
                            </div>
                        </div>
                    </div>
                </div>

                <div class="lg:col-span-6">
                    <div class="bg-white text-[#172033] rounded-3xl p-8 border border-[#D9E1EA] space-y-6 shadow-lg">
                        <h3 class="text-lg font-bold text-[#172033] flex items-center gap-2">
                            <i class="fa-solid fa-[#B87333] fa-diagram-project"></i> Verification Process Sequence
                        </h3>

                        <div class="space-y-4 text-xs">
                            <div class="p-3.5 bg-slate-50 rounded-xl border border-[#D9E1EA] flex items-center justify-between">
                                <span class="font-bold">1. Portal Registration</span>
                                <span class="copper-tag">USER LEVEL</span>
                            </div>
                            <div class="p-3.5 bg-slate-50 rounded-xl border border-[#D9E1EA] flex items-center justify-between">
                                <span class="font-bold">2. Document Submission</span>
                                <span class="copper-tag">DATA LEVEL</span>
                            </div>
                            <div class="p-3.5 bg-slate-50 rounded-xl border border-[#D9E1EA] flex items-center justify-between">
                                <span class="font-bold">3. Admin Review & Audit</span>
                                <span class="copper-tag">ADMIN LEVEL</span>
                            </div>
                            <div class="p-3.5 bg-emerald-50 rounded-xl border border-emerald-200 flex items-center justify-between text-emerald-900">
                                <span class="font-bold">4. Verified Status Active</span>
                                <span class="bg-emerald-200 text-emerald-900 px-2 py-0.5 rounded font-bold text-[10px]">APPROVED</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ============================================================================ -->
    <!-- SECTION 11: INTEGRATED INDUSTRIAL ECOSYSTEM SYSTEM DIAGRAM                  -->
    <!-- ============================================================================ -->
    <section class="py-20 bg-white text-[#172033] border-b border-[#D9E1EA]" id="ecosystem">
        <div class="max-w-8xl mx-auto px-6 lg:px-12 text-center space-y-4">
            <span class="copper-badge"><i class="fa-solid fa-network-wired"></i> Architecture Flow</span>
            <h2 class="text-3xl sm:text-4xl lg:text-5xl font-black text-[#172033] tracking-tight">
                Integrated Industrial Ecosystem Diagram
            </h2>
            <p class="text-base sm:text-lg text-[#526174] max-w-2xl mx-auto leading-relaxed">
                System relationship diagram illustrating data and participant flow across the platform.
            </p>

            <div class="grid grid-cols-1 md:grid-cols-4 gap-6 text-left pt-10">
                <div class="bg-[#F8FAFC] border border-[#D9E1EA] p-6 rounded-2xl space-y-3 hover:border-[#1677FF] transition-all">
                    <div class="w-12 h-12 rounded-xl bg-blue-100 text-[#1677FF] flex items-center justify-center font-bold text-2xl">
                        <i class="fa-solid fa-industry"></i>
                    </div>
                    <h3 class="text-lg font-bold text-[#172033]">Factory Requirement</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">
                        Factory buyers initiate spare-part searches or submit emergency breakdown requests.
                    </p>
                </div>

                <div class="bg-[#F8FAFC] border border-[#D9E1EA] p-6 rounded-2xl space-y-3 hover:border-emerald-500 transition-all">
                    <div class="w-12 h-12 rounded-xl bg-emerald-100 text-emerald-700 flex items-center justify-center font-bold text-2xl">
                        <i class="fa-solid fa-warehouse"></i>
                    </div>
                    <h3 class="text-lg font-bold text-[#172033]">Supplier Quotation</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">
                        Suppliers review RFQs, verify inventory stock availability, and submit price quotes.
                    </p>
                </div>

                <div class="bg-[#F8FAFC] border border-[#D9E1EA] p-6 rounded-2xl space-y-3 hover:border-cyan-500 transition-all">
                    <div class="w-12 h-12 rounded-xl bg-cyan-100 text-cyan-700 flex items-center justify-center font-bold text-2xl">
                        <i class="fa-solid fa-wrench"></i>
                    </div>
                    <h3 class="text-lg font-bold text-[#172033]">Technician Link</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">
                        Field service providers offer technical installation and maintenance assistance.
                    </p>
                </div>

                <div class="bg-[#F8FAFC] border border-[#D9E1EA] p-6 rounded-2xl space-y-3 hover:border-amber-500 transition-all">
                    <div class="w-12 h-12 rounded-xl bg-amber-100 text-amber-700 flex items-center justify-center font-bold text-2xl">
                        <i class="fa-solid fa-shield-halved"></i>
                    </div>
                    <h3 class="text-lg font-bold text-[#172033]">Admin Oversight</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">
                        System administrators manage user verification, complaint tickets, and analytics.
                    </p>
                </div>
            </div>
        </div>
    </section>

    <!-- ============================================================================ -->
    <!-- SECTION 12: FINAL CALL TO ACTION ("KEEP PRODUCTION MOVING")                 -->
    <!-- ============================================================================ -->
    <section class="py-20 bg-[#F1F5F9] text-[#172033] text-center border-b border-[#D9E1EA] relative overflow-hidden">
        <div class="max-w-4xl mx-auto px-6 lg:px-12 space-y-8 relative z-10">
            <span class="copper-badge"><i class="fa-solid fa-rocket"></i> Get Started</span>
            <h2 class="text-4xl sm:text-5xl font-black text-[#172033] tracking-tight">
                Keep Production Moving.
            </h2>
            <p class="text-base sm:text-lg text-[#526174] leading-relaxed max-w-2xl mx-auto">
                Discover industrial parts, compare supplier options, and manage procurement requests through one platform.
            </p>

            <div class="flex flex-col sm:flex-row items-center justify-center gap-5 pt-4">
                <a href="#parts-catalog" class="btn-primary text-base py-4 px-8 font-extrabold shadow-md">
                    <i class="fa-solid fa-magnifying-glass"></i> Explore Spare Parts
                </a>
                <a href="~/Account/Register.aspx" runat="server" class="btn-secondary text-base py-4 px-8 font-extrabold bg-white text-[#172033] hover:bg-slate-100">
                    <i class="fa-solid fa-user-plus"></i> Register Portal Account
                </a>
            </div>
        </div>
    </section>

    <!-- Client-Side Script for Indian Rupee Formatting & Filters -->
    <script>
        function formatRupee(amount) {
            return new Intl.NumberFormat('en-IN', { style: 'currency', currency: 'INR', maximumFractionDigits: 0 }).format(amount);
        }

        function filterParts(cat) {
            var cards = document.querySelectorAll('.part-card');
            cards.forEach(function (card) {
                if (cat === 'all' || card.getAttribute('data-cat') === cat) {
                    card.style.display = 'block';
                } else {
                    card.style.display = 'none';
                }
            });
        }
    </script>
</asp:Content>

