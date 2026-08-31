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
    <section class="relative bg-[#F8FAFC] text-[#172033] overflow-hidden pt-16 pb-24 lg:pt-20 lg:pb-28 bg-grid-pattern-light border-b border-[#D9E1EA]">
        <div class="absolute top-1/3 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[700px] h-[700px] light-blue-glow pointer-events-none"></div>

        <div class="max-w-8xl mx-auto px-6 lg:px-12 relative z-10">
            <div class="grid grid-cols-1 lg:grid-cols-12 gap-12 items-center">
                <!-- Left Column: Hero Content -->
                <div class="lg:col-span-7 space-y-8 text-left">
                    <div class="inline-flex items-center gap-2.5 px-4 py-2 rounded-full text-xs font-bold bg-blue-50 text-[#1677FF] border border-blue-200 shadow-xs">
                        <i class="fa-solid fa-shield-halved text-[#1677FF]"></i>
                        <span class="tracking-wider uppercase">INDUSTRIAL PROCUREMENT PLATFORM</span>
                    </div>

                    <h1 class="text-4xl sm:text-5xl lg:text-6xl font-black tracking-tight text-[#172033] leading-none">
                        Find the Right Industrial Part. <span class="text-[#1677FF]">Faster.</span>
                    </h1>

                    <p class="text-lg sm:text-xl text-[#526174] max-w-2xl leading-relaxed font-normal">
                        Find spare parts, compare verified suppliers, request quotations and connect with technical support from one connected industrial platform.
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

                    <!-- Platform Feature Proof Indicators (Replaces Numerical Stats) -->
                    <div class="grid grid-cols-2 sm:grid-cols-4 gap-4 pt-8 border-t border-[#D9E1EA]">
                        <div class="bg-white p-4 rounded-2xl border border-[#D9E1EA] shadow-xs space-y-1">
                            <div class="text-[#1677FF] font-bold text-sm flex items-center gap-1.5">
                                <i class="fa-solid fa-barcode"></i> Part Discovery
                            </div>
                            <span class="text-xs text-[#526174] font-medium block">Instant OEM Part Mapping</span>
                        </div>
                        <div class="bg-white p-4 rounded-2xl border border-[#D9E1EA] shadow-xs space-y-1">
                            <div class="text-emerald-700 font-bold text-sm flex items-center gap-1.5">
                                <i class="fa-solid fa-warehouse"></i> Supplier Compare
                            </div>
                            <span class="text-xs text-[#526174] font-medium block">Verified Inventory & Stock</span>
                        </div>
                        <div class="bg-white p-4 rounded-2xl border border-[#D9E1EA] shadow-xs space-y-1">
                            <div class="text-[#F97316] font-bold text-sm flex items-center gap-1.5">
                                <i class="fa-solid fa-bolt"></i> Emergency Desk
                            </div>
                            <span class="text-xs text-[#526174] font-medium block">24/7 Breakdown Dispatch</span>
                        </div>
                        <div class="bg-white p-4 rounded-2xl border border-[#D9E1EA] shadow-xs space-y-1">
                            <div class="text-cyan-700 font-bold text-sm flex items-center gap-1.5">
                                <i class="fa-solid fa-wrench"></i> Field Technicians
                            </div>
                            <span class="text-xs text-[#526174] font-medium block">Certified On-Duty Services</span>
                        </div>
                    </div>
                </div>

                <!-- Right Column: Bright Industrial Product UI Visual -->
                <div class="lg:col-span-5">
                    <div class="bg-white border-2 border-[#D9E1EA] rounded-3xl p-6 shadow-xl space-y-5">
                        <div class="flex items-center justify-between border-b border-[#D9E1EA] pb-4">
                            <div class="flex items-center gap-3">
                                <div class="w-3 h-3 rounded-full bg-emerald-500 animate-pulse"></div>
                                <span class="text-xs font-bold text-[#172033] uppercase tracking-wider">Live Procurement Interface</span>
                            </div>
                            <span class="copper-tag">PRODUCT PREVIEW</span>
                        </div>

                        <!-- Product Search Context Card -->
                        <div class="bg-[#F1F5F9] p-3.5 rounded-2xl border border-[#D9E1EA] space-y-2">
                            <div class="text-[11px] font-mono text-[#526174] flex justify-between">
                                <span>Search Query:</span>
                                <span class="text-[#1677FF] font-bold">Deep Groove Ball Bearing</span>
                            </div>
                            <div class="bg-white text-[#172033] px-3.5 py-2.5 rounded-xl text-xs font-mono font-bold flex items-center justify-between border border-[#D9E1EA] shadow-xs">
                                <span>6204-2RS Ball Bearing</span>
                                <span class="bg-emerald-100 text-emerald-900 px-2 py-0.5 rounded text-[10px]">OEM MATCHED</span>
                            </div>
                        </div>

                        <!-- 3 Verified Supplier Result Rows -->
                        <div class="space-y-3">
                            <div class="bg-slate-50 p-4 rounded-2xl border border-[#D9E1EA] flex items-center justify-between hover:border-[#1677FF] transition-all">
                                <div>
                                    <div class="text-xs font-bold text-[#172033] flex items-center gap-2">
                                        National Industrial Spares
                                        <span class="badge-verified text-[9px] py-0 px-1.5">Verified</span>
                                    </div>
                                    <div class="text-[11px] text-[#526174] font-mono mt-0.5">Distance: 12 km | In Stock (150 Pcs)</div>
                                </div>
                                <div class="text-right">
                                    <span class="text-sm font-extrabold text-[#172033] block">₹1,249</span>
                                    <span class="text-[10px] text-emerald-600 font-mono font-bold">&lt; 15 Min Reply</span>
                                </div>
                            </div>

                            <div class="bg-slate-50 p-4 rounded-2xl border border-[#D9E1EA] flex items-center justify-between hover:border-[#1677FF] transition-all">
                                <div>
                                    <div class="text-xs font-bold text-[#172033] flex items-center gap-2">
                                        Apex Motion Components
                                        <span class="badge-verified text-[9px] py-0 px-1.5">Verified</span>
                                    </div>
                                    <div class="text-[11px] text-[#526174] font-mono mt-0.5">Distance: 24 km | In Stock (45 Pcs)</div>
                                </div>
                                <div class="text-right">
                                    <span class="text-sm font-extrabold text-[#172033] block">₹1,290</span>
                                    <span class="text-[10px] text-[#1677FF] font-mono font-bold">20 Min Reply</span>
                                </div>
                            </div>

                            <div class="bg-slate-50 p-4 rounded-2xl border border-[#D9E1EA] flex items-center justify-between hover:border-[#1677FF] transition-all">
                                <div>
                                    <div class="text-xs font-bold text-[#172033] flex items-center gap-2">
                                        Gujarat Industrial Traders
                                        <span class="badge-verified text-[9px] py-0 px-1.5">Verified</span>
                                    </div>
                                    <div class="text-[11px] text-[#526174] font-mono mt-0.5">Distance: 31 km | Limited Stock</div>
                                </div>
                                <div class="text-right">
                                    <span class="text-sm font-extrabold text-[#172033] block">₹1,320</span>
                                    <span class="text-[10px] text-slate-500 font-mono font-bold">30 Min Reply</span>
                                </div>
                            </div>
                        </div>

                        <div class="pt-3 border-t border-[#D9E1EA] flex items-center justify-between text-xs text-[#526174]">
                            <span>Available Technicians: <strong class="text-[#172033]">4 On-Duty</strong></span>
                            <a href="#supplier-comparison" class="text-[#1677FF] hover:underline font-bold">Compare All Suppliers →</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ============================================================================ -->
    <!-- SECTION 2: PROBLEM VS SOLUTION (LIGHT BEFORE/AFTER COMPARISON)               -->
    <!-- ============================================================================ -->
    <section class="py-24 bg-white border-b border-[#D9E1EA]" id="problem-solution">
        <div class="max-w-8xl mx-auto px-6 lg:px-12">
            <div class="text-center max-w-3xl mx-auto mb-16 space-y-3">
                <span class="copper-badge"><i class="fa-solid fa-triangle-exclamation"></i> The Downtime Challenge</span>
                <h2 class="text-3xl sm:text-4xl lg:text-5xl font-black text-[#172033] tracking-tight">
                    Machine Down? Traditional Procurement Costs Valuable Time.
                </h2>
                <p class="text-base sm:text-lg text-[#526174] leading-relaxed max-w-2xl mx-auto">
                    When critical plant machinery halts, manual phone calls, unverified stock levels, and unknown part numbers slow down production recovery.
                </p>
            </div>

            <!-- Side-by-Side Light Comparison -->
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
                                <p class="text-xs text-red-700 font-semibold">Fragmented & Slow</p>
                            </div>
                        </div>
                        <span class="bg-red-600 text-white text-xs font-extrabold uppercase px-3 py-1 rounded-md">DELAYS</span>
                    </div>

                    <div class="space-y-4 text-sm text-[#172033]">
                        <div class="flex items-start gap-3">
                            <i class="fa-solid fa-xmark text-red-600 text-base shrink-0 mt-1"></i>
                            <div><strong>Unknown Part Numbers:</strong> Maintenance team guesses replacement specifications without OEM cross-referencing.</div>
                        </div>
                        <div class="flex items-start gap-3">
                            <i class="fa-solid fa-xmark text-red-600 text-base shrink-0 mt-1"></i>
                            <div><strong>Multiple Vendor Calls:</strong> Calling 10+ local vendors manually to verify stock availability.</div>
                        </div>
                        <div class="flex items-start gap-3">
                            <i class="fa-solid fa-xmark text-red-600 text-base shrink-0 mt-1"></i>
                            <div><strong>Price Uncertainty:</strong> Unclear pricing with emergency markups and unverified supplier credentials.</div>
                        </div>
                        <div class="flex items-start gap-3">
                            <i class="fa-solid fa-xmark text-red-600 text-base shrink-0 mt-1"></i>
                            <div><strong>No Technician Support:</strong> Part arrives, but no qualified field service technician is available to install it.</div>
                        </div>
                    </div>

                    <div class="p-4 bg-red-100 rounded-2xl border border-red-200 text-xs text-red-950 font-bold">
                        Impact: 12 to 48 hours of plant downtime costing ₹50,000+ per hour in lost manufacturing.
                    </div>
                </div>

                <!-- Platform Connected Solution Card -->
                <div class="bg-blue-50/60 border-2 border-blue-200 rounded-3xl p-8 lg:p-10 space-y-6">
                    <div class="flex items-center justify-between border-b border-blue-200 pb-4">
                        <div class="flex items-center gap-3">
                            <div class="w-12 h-12 rounded-2xl bg-[#1677FF] text-white flex items-center justify-center text-2xl font-bold shadow-sm">
                                <i class="fa-solid fa-bolt"></i>
                            </div>
                            <div>
                                <h3 class="text-xl font-bold text-[#172033]">SPAREFINDER Platform</h3>
                                <p class="text-xs text-emerald-700 font-semibold">Streamlined & Verified</p>
                            </div>
                        </div>
                        <span class="bg-emerald-600 text-white text-xs font-extrabold uppercase px-3 py-1 rounded-md">OPTIMAL</span>
                    </div>

                    <div class="space-y-4 text-sm text-[#172033]">
                        <div class="flex items-start gap-3">
                            <i class="fa-solid fa-check text-emerald-600 text-base shrink-0 mt-1"></i>
                            <div><strong>Part # & Machine Model Search:</strong> Instantly match part numbers or machine models across indexed spares.</div>
                        </div>
                        <div class="flex items-start gap-3">
                            <i class="fa-solid fa-check text-emerald-600 text-base shrink-0 mt-1"></i>
                            <div><strong>Real-Time Stock & Price Comparison:</strong> Compare supplier inventory, pricing, and distance side-by-side.</div>
                        </div>
                        <div class="flex items-start gap-3">
                            <i class="fa-solid fa-check text-emerald-600 text-base shrink-0 mt-1"></i>
                            <div><strong>1-Click Emergency Procurement:</strong> Broadcast high-priority breakdown dispatches to nearby suppliers.</div>
                        </div>
                        <div class="flex items-start gap-3">
                            <i class="fa-solid fa-check text-emerald-600 text-base shrink-0 mt-1"></i>
                            <div><strong>Integrated Field Technician Booking:</strong> Book verified specialists (skills, rates, availability) alongside spare parts.</div>
                        </div>
                    </div>

                    <div class="p-4 bg-emerald-100 rounded-2xl border border-emerald-300 text-xs text-emerald-950 font-bold">
                        Impact: Resolution time reduced by up to 75% with transparent, verified procurement.
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ============================================================================ -->
    <!-- SECTION 3: BUSINESS VALUE ("WHY INDUSTRIAL PROCUREMENT NEEDS A CONNECTED PLATFORM")-->
    <!-- ============================================================================ -->
    <section class="py-24 bg-[#F1F5F9] border-b border-[#D9E1EA]">
        <div class="max-w-8xl mx-auto px-6 lg:px-12">
            <div class="text-center max-w-3xl mx-auto mb-16 space-y-3">
                <span class="copper-badge"><i class="fa-solid fa-briefcase"></i> Business Impact</span>
                <h2 class="text-3xl sm:text-4xl lg:text-5xl font-black text-[#172033] tracking-tight">
                    Why Industrial Procurement Needs a Connected Platform
                </h2>
                <p class="text-base sm:text-lg text-[#526174] leading-relaxed max-w-2xl mx-auto">
                    Connecting all 3 sides of the industrial maintenance lifecycle into a single transparent ecosystem.
                </p>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                <div class="bg-white p-8 rounded-3xl border border-[#D9E1EA] shadow-xs space-y-4">
                    <div class="w-12 h-12 rounded-2xl bg-blue-100 text-[#1677FF] flex items-center justify-center font-bold text-2xl">
                        <i class="fa-solid fa-industry"></i>
                    </div>
                    <h3 class="text-xl font-bold text-[#172033]">For Factories & Buyers</h3>
                    <p class="text-sm text-[#526174] leading-relaxed">
                        Instantly locate exact OEM spares, compare verified supplier pricing and distance, issue RFQs, and book on-duty repair specialists to eliminate downtime.
                    </p>
                </div>

                <div class="bg-white p-8 rounded-3xl border border-[#D9E1EA] shadow-xs space-y-4">
                    <div class="w-12 h-12 rounded-2xl bg-emerald-100 text-emerald-700 flex items-center justify-center font-bold text-2xl">
                        <i class="fa-solid fa-warehouse"></i>
                    </div>
                    <h3 class="text-xl font-bold text-[#172033]">For Verified Suppliers</h3>
                    <p class="text-sm text-[#526174] leading-relaxed">
                        Access direct industrial demand from active factories, submit competitive RFQ bids, and fulfill high-priority breakdown orders with GSTIN credibility.
                    </p>
                </div>

                <div class="bg-white p-8 rounded-3xl border border-[#D9E1EA] shadow-xs space-y-4">
                    <div class="w-12 h-12 rounded-2xl bg-cyan-100 text-cyan-700 flex items-center justify-center font-bold text-2xl">
                        <i class="fa-solid fa-wrench"></i>
                    </div>
                    <h3 class="text-xl font-bold text-[#172033]">For Service Technicians</h3>
                    <p class="text-sm text-[#526174] leading-relaxed">
                        Gain direct visibility for field service requests, showcase technical skills (Hydraulics, CNC, VFDs), set hourly rates, and manage on-duty availability.
                    </p>
                </div>
            </div>
        </div>
    </section>

    <!-- ============================================================================ -->
    <!-- SECTION 4: WHY WE ARE DIFFERENT (CENTRAL FACTORY ECOSYSTEM GRAPH)            -->
    <!-- ============================================================================ -->
    <section class="py-24 bg-[#F8FAFC] border-b border-[#D9E1EA]" id="differentiators">
        <div class="max-w-8xl mx-auto px-6 lg:px-12">
            <div class="text-center max-w-3xl mx-auto mb-16 space-y-3">
                <span class="copper-badge"><i class="fa-solid fa-layer-group"></i> Central Architecture</span>
                <h2 class="text-3xl sm:text-4xl lg:text-5xl font-black text-[#172033] tracking-tight">
                    More Than a Spare-Part Marketplace.
                </h2>
                <p class="text-base sm:text-lg text-[#526174] leading-relaxed max-w-2xl mx-auto">
                    We connect the entire industrial resolution path—from machine problem to part search, supplier comparison, emergency dispatch, and technician installation.
                </p>
            </div>

            <!-- Central Factory Ecosystem Composition -->
            <div class="bg-white border border-[#D9E1EA] rounded-3xl p-8 lg:p-12 shadow-lg space-y-12">
                <div class="flex flex-wrap items-center justify-between gap-4 border-b border-[#D9E1EA] pb-6 text-xs font-mono font-bold">
                    <span class="text-[#1677FF] flex items-center gap-2">
                        <i class="fa-solid fa-circle text-[8px] animate-pulse"></i> CONNECTED PLATFORM GRAPH
                    </span>
                    <div class="flex flex-wrap gap-3 text-[#526174]">
                        <span>FACTORY</span> ➔ <span>SPARE PARTS</span> ➔ <span>SUPPLIERS</span> ➔ <span>RFQs</span> ➔ <span>TECHNICIANS</span>
                    </div>
                </div>

                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                    <div class="bg-[#F8FAFC] border border-[#D9E1EA] p-6 rounded-2xl space-y-3 hover:border-[#1677FF] transition-all">
                        <div class="flex items-center gap-3">
                            <div class="w-10 h-10 rounded-xl bg-blue-100 text-[#1677FF] flex items-center justify-center font-bold text-lg">
                                <i class="fa-solid fa-barcode"></i>
                            </div>
                            <h3 class="text-base font-bold text-[#172033]">Part # & Machine Specs</h3>
                        </div>
                        <p class="text-xs text-[#526174] leading-relaxed">
                            Search by exact OEM part number or machine model to eliminate incorrect part ordering.
                        </p>
                    </div>

                    <div class="bg-[#F8FAFC] border border-[#D9E1EA] p-6 rounded-2xl space-y-3 hover:border-emerald-500 transition-all">
                        <div class="flex items-center gap-3">
                            <div class="w-10 h-10 rounded-xl bg-emerald-100 text-emerald-700 flex items-center justify-center font-bold text-lg">
                                <i class="fa-solid fa-shield-check"></i>
                            </div>
                            <h3 class="text-base font-bold text-[#172033]">100% Verified Suppliers</h3>
                        </div>
                        <p class="text-xs text-[#526174] leading-relaxed">
                            Strict identity check, business registration verification, and GSTIN auditing by admins.
                        </p>
                    </div>

                    <div class="bg-[#F8FAFC] border border-[#D9E1EA] p-6 rounded-2xl space-y-3 hover:border-amber-500 transition-all">
                        <div class="flex items-center gap-3">
                            <div class="w-10 h-10 rounded-xl bg-amber-100 text-amber-700 flex items-center justify-center font-bold text-lg">
                                <i class="fa-solid fa-file-signature"></i>
                            </div>
                            <h3 class="text-base font-bold text-[#172033]">RFQ Bidding & Prices</h3>
                        </div>
                        <p class="text-xs text-[#526174] leading-relaxed">
                            Issue Requests for Quotations and compare competitive bids, lead times, and warranties side-by-side.
                        </p>
                    </div>

                    <div class="bg-[#F8FAFC] border border-[#D9E1EA] p-6 rounded-2xl space-y-3 hover:border-[#F97316] transition-all">
                        <div class="flex items-center gap-3">
                            <div class="w-10 h-10 rounded-xl bg-orange-100 text-[#F97316] flex items-center justify-center font-bold text-lg">
                                <i class="fa-solid fa-bolt"></i>
                            </div>
                            <h3 class="text-base font-bold text-[#172033]">Emergency Breakdown Protocol</h3>
                        </div>
                        <p class="text-xs text-[#526174] leading-relaxed">
                            High-priority breakdown alert broadcasts to nearest suppliers for immediate dispatch.
                        </p>
                    </div>

                    <div class="bg-[#F8FAFC] border border-[#D9E1EA] p-6 rounded-2xl space-y-3 hover:border-cyan-500 transition-all">
                        <div class="flex items-center gap-3">
                            <div class="w-10 h-10 rounded-xl bg-cyan-100 text-cyan-700 flex items-center justify-center font-bold text-lg">
                                <i class="fa-solid fa-wrench"></i>
                            </div>
                            <h3 class="text-base font-bold text-[#172033]">Certified Field Technicians</h3>
                        </div>
                        <p class="text-xs text-[#526174] leading-relaxed">
                            Book skilled field maintenance specialists categorized by skill, rate, and duty status alongside parts.
                        </p>
                    </div>

                    <div class="bg-[#F8FAFC] border border-[#D9E1EA] p-6 rounded-2xl space-y-3 hover:border-indigo-500 transition-all">
                        <div class="flex items-center gap-3">
                            <div class="w-10 h-10 rounded-xl bg-indigo-100 text-indigo-700 flex items-center justify-center font-bold text-lg">
                                <i class="fa-solid fa-chart-line"></i>
                            </div>
                            <h3 class="text-base font-bold text-[#172033]">End-to-End Tracking</h3>
                        </div>
                        <p class="text-xs text-[#526174] leading-relaxed">
                            Full audit tracking for every procurement order, RFQ bid, emergency dispatch, and repair visit.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ============================================================================ -->
    <!-- SECTION 5: HOW IT WORKS (LIGHT CONTINUOUS TIMELINE)                          -->
    <!-- ============================================================================ -->
    <section class="py-24 bg-white border-b border-[#D9E1EA]" id="how-it-works">
        <div class="max-w-8xl mx-auto px-6 lg:px-12">
            <div class="text-center max-w-3xl mx-auto mb-16 space-y-3">
                <span class="copper-badge"><i class="fa-solid fa-route"></i> Resolution Timeline</span>
                <h2 class="text-3xl sm:text-4xl lg:text-5xl font-black text-[#172033] tracking-tight">
                    From Problem to Resolution in 6 Continuous Steps
                </h2>
                <p class="text-base sm:text-lg text-[#526174] leading-relaxed max-w-2xl mx-auto">
                    Designed for industrial speed and clarity. Follow our continuous resolution timeline to restore plant capacity.
                </p>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-6 gap-6">
                <div class="bg-[#F8FAFC] border border-[#D9E1EA] p-6 rounded-2xl space-y-3 hover:border-[#1677FF] transition-all shadow-xs">
                    <span class="text-xs font-mono font-bold text-[#1677FF] bg-blue-50 px-2.5 py-1 rounded-md">STEP 01</span>
                    <h3 class="text-base font-bold text-[#172033]">01. Search</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">Enter exact part number, machine model, or category.</p>
                </div>

                <div class="bg-[#F8FAFC] border border-[#D9E1EA] p-6 rounded-2xl space-y-3 hover:border-[#1677FF] transition-all shadow-xs">
                    <span class="text-xs font-mono font-bold text-[#1677FF] bg-blue-50 px-2.5 py-1 rounded-md">STEP 02</span>
                    <h3 class="text-base font-bold text-[#172033]">02. Compare</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">Compare verified supplier availability, price, and distance.</p>
                </div>

                <div class="bg-[#F8FAFC] border border-[#D9E1EA] p-6 rounded-2xl space-y-3 hover:border-[#1677FF] transition-all shadow-xs">
                    <span class="text-xs font-mono font-bold text-[#1677FF] bg-blue-50 px-2.5 py-1 rounded-md">STEP 03</span>
                    <h3 class="text-base font-bold text-[#172033]">03. Request</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">Issue RFQ for bidding or trigger Emergency Dispatch.</p>
                </div>

                <div class="bg-[#F8FAFC] border border-[#D9E1EA] p-6 rounded-2xl space-y-3 hover:border-[#1677FF] transition-all shadow-xs">
                    <span class="text-xs font-mono font-bold text-[#1677FF] bg-blue-50 px-2.5 py-1 rounded-md">STEP 04</span>
                    <h3 class="text-base font-bold text-[#172033]">04. Connect</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">Receive instant supplier bids & book field technicians.</p>
                </div>

                <div class="bg-[#F8FAFC] border border-[#D9E1EA] p-6 rounded-2xl space-y-3 hover:border-[#1677FF] transition-all shadow-xs">
                    <span class="text-xs font-mono font-bold text-[#1677FF] bg-blue-50 px-2.5 py-1 rounded-md">STEP 05</span>
                    <h3 class="text-base font-bold text-[#172033]">05. Procure</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">Select optimal quote and confirm purchase order.</p>
                </div>

                <div class="bg-emerald-50 border border-emerald-200 p-6 rounded-2xl space-y-3 shadow-xs">
                    <span class="text-xs font-mono font-bold text-emerald-800 bg-emerald-100 px-2.5 py-1 rounded-md">STEP 06</span>
                    <h3 class="text-base font-bold text-[#172033]">06. Track</h3>
                    <p class="text-xs text-emerald-900 leading-relaxed">Follow live dispatch status until machine is restored.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- ============================================================================ -->
    <!-- SECTION 6: INDUSTRIAL SPARE-PART SEARCH (LIGHT PRODUCT SHOWCASE INTERFACE)  -->
    <!-- ============================================================================ -->
    <section class="py-24 bg-[#F8FAFC] border-b border-[#D9E1EA]" id="parts-catalog">
        <div class="max-w-8xl mx-auto px-6 lg:px-12">
            <!-- Search Input Box Showcase -->
            <div class="bg-white p-4 rounded-3xl border border-[#D9E1EA] shadow-md mb-12 max-w-4xl space-y-3">
                <div class="flex items-center gap-2 border-b border-[#D9E1EA] pb-3 text-xs font-bold text-[#172033]">
                    <span class="copper-tag">SEARCH BY</span>
                    <span class="text-[#1677FF]"><i class="fa-solid fa-barcode"></i> Part Number</span>
                    <span class="text-slate-300">|</span>
                    <span class="text-[#526174]"><i class="fa-solid fa-industry"></i> Machine Model</span>
                    <span class="text-slate-300">|</span>
                    <span class="text-[#526174]"><i class="fa-solid fa-boxes-stacked"></i> Category</span>
                </div>
                <div class="flex flex-col sm:flex-row gap-3">
                    <div class="relative flex-1">
                        <i class="fa-solid fa-magnifying-glass absolute left-4 top-4 text-slate-400 text-base"></i>
                        <asp:TextBox ID="txtSearchQuery" runat="server" CssClass="w-full pl-12 pr-4 py-3.5 text-[#172033] placeholder-slate-400 text-sm font-medium focus:outline-none bg-[#F8FAFC] rounded-xl border border-[#D9E1EA]" Placeholder="Search catalog e.g., 6204 Bearing, CNC Lathe, PART-HYD-001..."></asp:TextBox>
                    </div>
                    <asp:Button ID="btnSearch" runat="server" Text="Search Catalog" OnClick="btnSearch_Click" CssClass="btn-primary py-3.5 px-8 text-sm font-extrabold rounded-xl shrink-0" />
                </div>
            </div>

            <div class="flex flex-col md:flex-row md:items-end justify-between mb-12 gap-6">
                <div>
                    <span class="copper-badge mb-3"><i class="fa-solid fa-magnifying-glass"></i> Inventory Showcase</span>
                    <h2 class="text-3xl sm:text-4xl font-black text-[#172033]">Search Industrial Spare Parts</h2>
                    <p class="text-sm text-[#526174] mt-1">Real OEM components indexed by verified regional suppliers.</p>
                </div>

                <!-- Category Filter Buttons -->
                <div class="flex flex-wrap gap-2 text-xs font-bold">
                    <button type="button" class="px-4 py-2 rounded-xl bg-[#1677FF] text-white shadow-xs" onclick="filterParts('all')">All Categories</button>
                    <button type="button" class="px-4 py-2 rounded-xl bg-white border border-[#D9E1EA] text-[#172033] hover:bg-slate-100" onclick="filterParts('hydraulics')">Hydraulics</button>
                    <button type="button" class="px-4 py-2 rounded-xl bg-white border border-[#D9E1EA] text-[#172033] hover:bg-slate-100" onclick="filterParts('motors')">Motors & Drives</button>
                    <button type="button" class="px-4 py-2 rounded-xl bg-white border border-[#D9E1EA] text-[#172033] hover:bg-slate-100" onclick="filterParts('bearings')">Bearings</button>
                </div>
            </div>

            <!-- Parts Grid Showcase -->
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
                        <div>Supplier: National Industrial Spares</div>
                    </div>
                    <div class="flex justify-between items-center pt-3 border-t border-[#D9E1EA]">
                        <span class="text-lg font-black text-[#172033]">₹42,500</span>
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
                        <div>Supplier: Precision Motion Co</div>
                    </div>
                    <div class="flex justify-between items-center pt-3 border-t border-[#D9E1EA]">
                        <span class="text-lg font-black text-[#172033]">₹68,000</span>
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
                        <div>Supplier: Apex Bearings Ltd</div>
                    </div>
                    <div class="flex justify-between items-center pt-3 border-t border-[#D9E1EA]">
                        <span class="text-lg font-black text-[#172033]">₹1,850</span>
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
                        <div>Supplier: ElectroDrive Systems</div>
                    </div>
                    <div class="flex justify-between items-center pt-3 border-t border-[#D9E1EA]">
                        <span class="text-lg font-black text-[#172033]">₹34,200</span>
                        <a href="~/Account/Login.aspx" runat="server" class="btn-primary text-xs py-2 px-4">Request Quote</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ============================================================================ -->
    <!-- SECTION 7: SUPPLIER COMPARISON (ENTERPRISE PROCUREMENT SOFTWARE TABLE)       -->
    <!-- ============================================================================ -->
    <section class="py-24 bg-white border-b border-[#D9E1EA]" id="supplier-comparison">
        <div class="max-w-8xl mx-auto px-6 lg:px-12">
            <div class="text-center max-w-3xl mx-auto mb-16 space-y-3">
                <span class="copper-badge"><i class="fa-solid fa-code-compare"></i> Software Comparison</span>
                <h2 class="text-3xl sm:text-4xl lg:text-5xl font-black text-[#172033] tracking-tight">
                    Compare Verified Suppliers Before You Procure
                </h2>
                <p class="text-base sm:text-lg text-[#526174] leading-relaxed max-w-2xl mx-auto">
                    Software-level comparison across distance, stock availability, GSTIN verification status, and response time.
                </p>
            </div>

            <!-- B2B Procurement Table Interface -->
            <div class="table-container shadow-md">
                <table class="table-custom">
                    <thead>
                        <tr>
                            <th>Supplier Business Name</th>
                            <th>Verification Status</th>
                            <th>Distance</th>
                            <th>Stock Status</th>
                            <th>Unit Price</th>
                            <th>Avg Response Time</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody class="divide-y divide-[#D9E1EA] text-sm font-medium text-[#172033]">
                        <tr class="hover:bg-slate-50 transition-colors">
                            <td class="font-bold text-[#172033]">
                                National Industrial Spares Co.
                                <span class="block text-xs font-normal text-[#526174] font-mono">GSTIN: 27AAAAA0000A1Z5 | Pune, MH</span>
                            </td>
                            <td><span class="badge-verified"><i class="fa-solid fa-check text-[10px] mr-1"></i> Admin Verified</span></td>
                            <td class="font-mono text-[#172033]">12 km</td>
                            <td><span class="text-emerald-700 font-bold">In Stock (150 Pcs)</span></td>
                            <td class="font-bold text-[#172033] font-mono text-base">₹42,500</td>
                            <td class="font-mono text-[#1677FF] font-bold">15 Mins</td>
                            <td><a href="~/Account/Login.aspx" runat="server" class="btn-primary text-xs py-2 px-3">Issue RFQ</a></td>
                        </tr>
                        <tr class="hover:bg-slate-50 transition-colors">
                            <td class="font-bold text-[#172033]">
                                Precision Motion Control Solutions
                                <span class="block text-xs font-normal text-[#526174] font-mono">GSTIN: 27BBBBB0000B1Z2 | Mumbai, MH</span>
                            </td>
                            <td><span class="badge-verified"><i class="fa-solid fa-check text-[10px] mr-1"></i> Admin Verified</span></td>
                            <td class="font-mono text-[#172033]">24 km</td>
                            <td><span class="text-emerald-700 font-bold">In Stock (45 Pcs)</span></td>
                            <td class="font-bold text-[#172033] font-mono text-base">₹43,100</td>
                            <td class="font-mono text-[#1677FF] font-bold">20 Mins</td>
                            <td><a href="~/Account/Login.aspx" runat="server" class="btn-primary text-xs py-2 px-3">Issue RFQ</a></td>
                        </tr>
                        <tr class="hover:bg-slate-50 transition-colors">
                            <td class="font-bold text-[#172033]">
                                Apex Bearings & Power Transmission
                                <span class="block text-xs font-normal text-[#526174] font-mono">GSTIN: 24CCCCC0000C1Z8 | Ahmedabad, GJ</span>
                            </td>
                            <td><span class="badge-verified"><i class="fa-solid fa-check text-[10px] mr-1"></i> Admin Verified</span></td>
                            <td class="font-mono text-[#172033]">31 km</td>
                            <td><span class="text-amber-700 font-bold">Limited Stock (8 Pcs)</span></td>
                            <td class="font-bold text-[#172033] font-mono text-base">₹44,000</td>
                            <td class="font-mono text-[#1677FF] font-bold">30 Mins</td>
                            <td><a href="~/Account/Login.aspx" runat="server" class="btn-primary text-xs py-2 px-3">Issue RFQ</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </section>

    <!-- ============================================================================ -->
    <!-- SECTION 8: EMERGENCY PROCUREMENT (LIGHT WARM BACKGROUND WITH ORANGE ACCENTS) -->
    <!-- ============================================================================ -->
    <section class="py-24 bg-gradient-to-br from-amber-500/10 via-orange-500/5 to-amber-500/10 text-[#172033] border-b border-[#D9E1EA] relative overflow-hidden" id="emergency">
        <div class="max-w-8xl mx-auto px-6 lg:px-12 relative z-10">
            <div class="bg-white border-2 border-orange-300 rounded-3xl p-8 sm:p-12 shadow-xl space-y-8">
                <div class="grid grid-cols-1 lg:grid-cols-12 gap-10 items-center">
                    <div class="lg:col-span-8 space-y-6">
                        <div class="inline-flex items-center gap-2.5 px-4 py-1.5 rounded-full text-xs font-black bg-[#F97316] text-white uppercase tracking-wider shadow-xs">
                            <i class="fa-solid fa-triangle-exclamation animate-pulse"></i> Emergency Procurement Protocol
                        </div>

                        <h2 class="text-4xl sm:text-5xl font-black text-[#172033] leading-tight">
                            MACHINE DOWN? Start an Emergency Procurement Request.
                        </h2>

                        <p class="text-base sm:text-lg text-[#526174] leading-relaxed font-normal max-w-2xl">
                            When critical production machinery halts, our Emergency System instantly broadcasts your breakdown requirement to all nearby verified suppliers and available field technicians for priority fulfillment.
                        </p>

                        <div class="grid grid-cols-1 sm:grid-cols-3 gap-4 pt-2 text-xs font-bold text-[#172033]">
                            <div class="flex items-center gap-2">
                                <i class="fa-solid fa-circle-check text-[#F97316] text-base"></i>
                                <span>Broadcast Alert to Local Suppliers</span>
                            </div>
                            <div class="flex items-center gap-2">
                                <i class="fa-solid fa-circle-check text-[#F97316] text-base"></i>
                                <span>High-Priority Courier Dispatch</span>
                            </div>
                            <div class="flex items-center gap-2">
                                <i class="fa-solid fa-circle-check text-[#F97316] text-base"></i>
                                <span>On-Duty Technician Dispatch</span>
                            </div>
                        </div>
                    </div>

                    <div class="lg:col-span-4 text-center lg:text-right space-y-4">
                        <a href="~/Account/Login.aspx?redirect=emergency" runat="server" class="btn-emergency w-full py-5 text-lg font-black rounded-2xl shadow-xl block text-center">
                            <i class="fa-solid fa-bolt text-xl"></i> Submit Breakdown Alert
                        </a>
                        <p class="text-xs text-[#526174] font-medium">
                            24/7 Hotline Support: <strong class="text-[#172033] font-mono text-sm">+91 1800-SPARE-PART</strong>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ============================================================================ -->
    <!-- SECTION 9: TECHNICIAN NETWORK (LIGHT SERVICE PROVIDER CARDS)                 -->
    <!-- ============================================================================ -->
    <section class="py-24 bg-white border-b border-[#D9E1EA]" id="technicians">
        <div class="max-w-8xl mx-auto px-6 lg:px-12">
            <div class="text-center max-w-3xl mx-auto mb-16 space-y-3">
                <span class="copper-badge"><i class="fa-solid fa-wrench"></i> Service Network</span>
                <h2 class="text-3xl sm:text-4xl lg:text-5xl font-black text-[#172033] tracking-tight">
                    Parts + Technical Expertise in One Platform
                </h2>
                <p class="text-base sm:text-lg text-[#526174] leading-relaxed max-w-2xl mx-auto">
                    Finding the spare part is only half the battle. Book certified field technicians specializing in hydraulic press repair, CNC lathe servicing, and VFD programming.
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
                                <h4 class="font-bold text-[#172033] text-base">Rajesh Kumar</h4>
                                <span class="text-xs text-[#526174] font-medium"><i class="fa-solid fa-location-dot text-slate-400"></i> Pune, MH</span>
                            </div>
                        </div>
                        <span class="badge-verified"><i class="fa-solid fa-circle text-[8px] text-emerald-600 mr-1.5"></i> On Duty</span>
                    </div>

                    <div class="bg-[#F8FAFC] p-4 rounded-xl border border-[#D9E1EA] space-y-1 text-xs">
                        <div class="font-bold text-[#172033]">Technical Skillset:</div>
                        <p class="text-[#526174]">Hydraulic Press Troubleshooting, Axial Pump Overhaul & Seal Replacements</p>
                    </div>

                    <div class="flex justify-between items-center pt-3 border-t border-[#D9E1EA] text-xs font-mono">
                        <span class="text-[#526174]">Experience: <strong class="text-[#172033]">8 Years</strong></span>
                        <span class="text-lg font-black text-cyan-800">₹1,200/hr</span>
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
                                <h4 class="font-bold text-[#172033] text-base">Amit Patel</h4>
                                <span class="text-xs text-[#526174] font-medium"><i class="fa-solid fa-location-dot text-slate-400"></i> Ahmedabad, GJ</span>
                            </div>
                        </div>
                        <span class="badge-verified"><i class="fa-solid fa-circle text-[8px] text-emerald-600 mr-1.5"></i> On Duty</span>
                    </div>

                    <div class="bg-[#F8FAFC] p-4 rounded-xl border border-[#D9E1EA] space-y-1 text-xs">
                        <div class="font-bold text-[#172033]">Technical Skillset:</div>
                        <p class="text-[#526174]">CNC Lathe Machine Alignment, Servo Motor Calibration & PLC Programming</p>
                    </div>

                    <div class="flex justify-between items-center pt-3 border-t border-[#D9E1EA] text-xs font-mono">
                        <span class="text-[#526174]">Experience: <strong class="text-[#172033]">10 Years</strong></span>
                        <span class="text-lg font-black text-[#1677FF]">₹1,500/hr</span>
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
                                <h4 class="font-bold text-[#172033] text-base">Suresh Verma</h4>
                                <span class="text-xs text-[#526174] font-medium"><i class="fa-solid fa-location-dot text-slate-400"></i> Mumbai, MH</span>
                            </div>
                        </div>
                        <span class="badge-verified"><i class="fa-solid fa-circle text-[8px] text-emerald-600 mr-1.5"></i> On Duty</span>
                    </div>

                    <div class="bg-[#F8FAFC] p-4 rounded-xl border border-[#D9E1EA] space-y-1 text-xs">
                        <div class="font-bold text-[#172033]">Technical Skillset:</div>
                        <p class="text-[#526174]">Industrial VFD Inverter Commissioning, Motor Control & Electrical Panels</p>
                    </div>

                    <div class="flex justify-between items-center pt-3 border-t border-[#D9E1EA] text-xs font-mono">
                        <span class="text-[#526174]">Experience: <strong class="text-[#172033]">6 Years</strong></span>
                        <span class="text-lg font-black text-amber-800">₹1,000/hr</span>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ============================================================================ -->
    <!-- SECTION 10: TRUST & VERIFICATION STANDARDS                                  -->
    <!-- ============================================================================ -->
    <section class="py-24 bg-[#F8FAFC] border-b border-[#D9E1EA]">
        <div class="max-w-8xl mx-auto px-6 lg:px-12">
            <div class="grid grid-cols-1 lg:grid-cols-12 gap-12 items-center">
                <div class="lg:col-span-6 space-y-6">
                    <span class="copper-badge"><i class="fa-solid fa-shield-halved"></i> Governance</span>
                    <h2 class="text-3xl sm:text-4xl lg:text-5xl font-black text-[#172033] tracking-tight">
                        Built Around Verified Industrial Connections
                    </h2>
                    <p class="text-base text-[#526174] leading-relaxed max-w-xl">
                        We prioritize operational integrity and legal verification. Every supplier and technician undergoes strict background checks before receiving verified status.
                    </p>

                    <div class="space-y-4 text-xs font-medium text-[#172033]">
                        <div class="flex items-start gap-3.5">
                            <i class="fa-solid fa-circle-check text-emerald-600 text-lg shrink-0 mt-0.5"></i>
                            <div>
                                <strong class="text-[#172033] block font-bold text-sm">Strict GSTIN & Business Verification:</strong>
                                Suppliers submit official company registration documents before receiving verified status.
                            </div>
                        </div>
                        <div class="flex items-start gap-3.5">
                            <i class="fa-solid fa-circle-check text-emerald-600 text-lg shrink-0 mt-0.5"></i>
                            <div>
                                <strong class="text-[#172033] block font-bold text-sm">Secured ADO.NET Data Security Layer:</strong>
                                Parameterized queries, salted SHA-256 password hashing, and role-based authorization controls.
                            </div>
                        </div>
                        <div class="flex items-start gap-3.5">
                            <i class="fa-solid fa-circle-check text-emerald-600 text-lg shrink-0 mt-0.5"></i>
                            <div>
                                <strong class="text-[#172033] block font-bold text-sm">Complete Request Audit History:</strong>
                                Every RFQ quote, purchase order, emergency alert, and repair visit is permanently logged.
                            </div>
                        </div>
                    </div>
                </div>

                <div class="lg:col-span-6">
                    <div class="bg-white text-[#172033] rounded-3xl p-8 border border-[#D9E1EA] space-y-6 shadow-lg">
                        <h3 class="text-lg font-bold text-[#172033] flex items-center gap-2">
                            <i class="fa-solid fa-shield-cat text-[#B87333]"></i> Platform Integrity Metrics
                        </h3>

                        <div class="space-y-5 text-xs">
                            <div>
                                <div class="flex justify-between text-[#526174] mb-1.5">
                                    <span class="font-semibold">Verified Supplier Ratio</span>
                                    <span class="font-bold text-emerald-700">100% Verified</span>
                                </div>
                                <div class="w-full bg-slate-200 rounded-full h-2.5">
                                    <div class="bg-emerald-600 h-2.5 rounded-full w-full"></div>
                                </div>
                            </div>

                            <div>
                                <div class="flex justify-between text-[#526174] mb-1.5">
                                    <span class="font-semibold">RFQ Quotation Accuracy</span>
                                    <span class="font-bold text-[#1677FF]">98.4%</span>
                                </div>
                                <div class="w-full bg-slate-200 rounded-full h-2.5">
                                    <div class="bg-[#1677FF] h-2.5 rounded-full w-[98%]"></div>
                                </div>
                            </div>

                            <div>
                                <div class="flex justify-between text-[#526174] mb-1.5">
                                    <span class="font-semibold">Emergency Breakdown Dispatch Speed</span>
                                    <span class="font-bold text-[#F97316]">&lt; 15 Minutes</span>
                                </div>
                                <div class="w-full bg-slate-200 rounded-full h-2.5">
                                    <div class="bg-[#F97316] h-2.5 rounded-full w-[95%]"></div>
                                </div>
                            </div>
                        </div>

                        <div class="pt-4 border-t border-[#D9E1EA] text-xs text-[#526174] font-mono">
                            System Architecture: ASP.NET Web Forms + SQL Server ADO.NET
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ============================================================================ -->
    <!-- SECTION 11: PLATFORM ECOSYSTEM DIAGRAM                                       -->
    <!-- ============================================================================ -->
    <section class="py-24 bg-white text-[#172033] border-b border-[#D9E1EA]" id="ecosystem">
        <div class="max-w-8xl mx-auto px-6 lg:px-12 text-center space-y-4">
            <span class="copper-badge"><i class="fa-solid fa-network-wired"></i> Integrated Architecture</span>
            <h2 class="text-3xl sm:text-4xl lg:text-5xl font-black text-[#172033] tracking-tight">
                The Integrated Industrial Ecosystem
            </h2>
            <p class="text-base sm:text-lg text-[#526174] max-w-2xl mx-auto leading-relaxed">
                Connecting all key industrial participants into a single transparent procurement and resolution network.
            </p>

            <div class="grid grid-cols-1 md:grid-cols-4 gap-6 text-left pt-10">
                <div class="bg-[#F8FAFC] border border-[#D9E1EA] p-6 rounded-2xl space-y-3 hover:border-[#1677FF] transition-all">
                    <div class="w-12 h-12 rounded-xl bg-blue-100 text-[#1677FF] flex items-center justify-center font-bold text-2xl">
                        <i class="fa-solid fa-industry"></i>
                    </div>
                    <h3 class="text-lg font-bold text-[#172033]">Factory Buyers</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">
                        Search parts, issue RFQs, create breakdown emergency dispatches, and track service history.
                    </p>
                </div>

                <div class="bg-[#F8FAFC] border border-[#D9E1EA] p-6 rounded-2xl space-y-3 hover:border-emerald-500 transition-all">
                    <div class="w-12 h-12 rounded-xl bg-emerald-100 text-emerald-700 flex items-center justify-center font-bold text-2xl">
                        <i class="fa-solid fa-warehouse"></i>
                    </div>
                    <h3 class="text-lg font-bold text-[#172033]">Spare-Part Suppliers</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">
                        Manage inventory pricing, submit RFQ bids, and fulfill high-priority breakdown orders.
                    </p>
                </div>

                <div class="bg-[#F8FAFC] border border-[#D9E1EA] p-6 rounded-2xl space-y-3 hover:border-cyan-500 transition-all">
                    <div class="w-12 h-12 rounded-xl bg-cyan-100 text-cyan-700 flex items-center justify-center font-bold text-2xl">
                        <i class="fa-solid fa-wrench"></i>
                    </div>
                    <h3 class="text-lg font-bold text-[#172033]">Field Technicians</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">
                        Manage service skills, hourly rates, duty availability, and accept field service requests.
                    </p>
                </div>

                <div class="bg-[#F8FAFC] border border-[#D9E1EA] p-6 rounded-2xl space-y-3 hover:border-amber-500 transition-all">
                    <div class="w-12 h-12 rounded-xl bg-amber-100 text-amber-700 flex items-center justify-center font-bold text-2xl">
                        <i class="fa-solid fa-shield-halved"></i>
                    </div>
                    <h3 class="text-lg font-bold text-[#172033]">Admin Governance</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">
                        User entity verifications, system analytics monitoring, and dispute helpdesk resolution.
                    </p>
                </div>
            </div>
        </div>
    </section>

    <!-- ============================================================================ -->
    <!-- SECTION 12: FINAL CONVERSION CTA ("KEEP PRODUCTION MOVING")                 -->
    <!-- ============================================================================ -->
    <section class="py-24 bg-[#F1F5F9] text-[#172033] text-center border-b border-[#D9E1EA] relative overflow-hidden">
        <div class="max-w-4xl mx-auto px-6 lg:px-12 space-y-8 relative z-10">
            <span class="copper-badge"><i class="fa-solid fa-rocket"></i> Get Started Today</span>
            <h2 class="text-4xl sm:text-5xl font-black text-[#172033] tracking-tight">
                Keep Production Moving.
            </h2>
            <p class="text-base sm:text-lg text-[#526174] leading-relaxed max-w-2xl mx-auto">
                Find the parts, suppliers and technical support you need from one connected industrial platform.
            </p>

            <div class="flex flex-col sm:flex-row items-center justify-center gap-5 pt-4">
                <a href="~/Account/Register.aspx" runat="server" class="btn-primary text-base py-4 px-8 font-extrabold shadow-md">
                    <i class="fa-solid fa-user-plus"></i> Register Portal Account
                </a>
                <a href="~/Account/Login.aspx" runat="server" class="btn-secondary text-base py-4 px-8 font-extrabold bg-white text-[#172033] hover:bg-slate-100">
                    <i class="fa-solid fa-right-to-bracket"></i> Sign In to Portal
                </a>
            </div>
        </div>
    </section>

    <!-- Client-Side Script for Indian Rupee Formatting & Filters -->
    <script>
        function formatRupee(amount) {
            return new Intl.NumberFormat('en-IN', { style: 'currency', currency: 'INR', maximumFractionDigits: 0 }).format(amount);
        }

        function setSearch(val) {
            var txt = document.getElementById('<%= txtSearchQuery.ClientID %>');
            if (txt) {
                txt.value = val;
                txt.focus();
            }
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
