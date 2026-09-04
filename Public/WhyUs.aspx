<%@ Page Title="Why Us - Industrial Platform Differentiators" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="WhyUs.aspx.cs" Inherits="IndustrialSparePartPortal.Public.WhyUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <!-- 1. Header Banner -->
    <div class="page-header-banner text-center space-y-4 bg-gradient-to-b from-blue-50/60 to-[#F8FAFC] py-14 border-b border-[#D9E1EA]">
        <span class="copper-badge"><i class="fa-solid fa-layer-group text-[#B87333]"></i> Platform Value Proposition</span>
        <h1 class="text-3xl sm:text-4xl lg:text-5xl font-black text-[#172033] tracking-tight">
            Why Industrial Plants Choose SPAREFINDER
        </h1>
        <p class="text-sm sm:text-base text-[#526174] max-w-3xl mx-auto leading-relaxed">
            Eliminating fragmented phone calls, uncertain inventory availability, and days of idle machine downtime through a unified digital sourcing network.
        </p>
    </div>

    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-16 space-y-20">
        
        <!-- ======================================================================== -->
        <!-- 2. TRADITIONAL VS PLATFORM COMPARISON MATRIX                             -->
        <!-- ======================================================================== -->
        <section class="space-y-6">
            <div class="text-center space-y-2">
                <span class="text-xs font-mono font-bold text-[#1677FF] uppercase tracking-wider">Operational Comparison</span>
                <h2 class="text-2xl sm:text-3xl font-extrabold text-[#172033]">Traditional Sourcing vs. SPAREFINDER</h2>
                <p class="text-xs sm:text-sm text-[#526174] max-w-2xl mx-auto">How digital part indexing and multi-supplier visibility transform plant maintenance.</p>
            </div>

            <div class="table-container shadow-xs border border-[#D9E1EA]">
                <table class="table-custom">
                    <thead>
                        <tr>
                            <th class="w-1/4">Procurement Parameter</th>
                            <th class="w-3/8 text-red-700 bg-red-50/60"><i class="fa-solid fa-xmark mr-1"></i> Traditional Offline Sourcing</th>
                            <th class="w-3/8 text-[#1677FF] bg-blue-50/60"><i class="fa-solid fa-check mr-1"></i> SPAREFINDER Platform</th>
                        </tr>
                    </thead>
                    <tbody class="divide-y divide-[#D9E1EA]">
                        <tr>
                            <td class="font-bold">Part Identification</td>
                            <td class="text-[#526174]">Manual physical catalogs, vague verbal descriptions, high error rate</td>
                            <td class="text-[#172033] font-semibold"><i class="fa-solid fa-check text-emerald-600 mr-1.5"></i> OEM Part Number & Machine Model cross-indexing</td>
                        </tr>
                        <tr>
                            <td class="font-bold">Supplier Discovery</td>
                            <td class="text-[#526174]">Limited to 2–3 known local dealers with opaque inventory</td>
                            <td class="text-[#172033] font-semibold"><i class="fa-solid fa-check text-emerald-600 mr-1.5"></i> Search across verified regional supplier inventory</td>
                        </tr>
                        <tr>
                            <td class="font-bold">Pricing Transparency</td>
                            <td class="text-[#526174]">Inconsistent quotes negotiated over disjointed phone calls</td>
                            <td class="text-[#172033] font-semibold"><i class="fa-solid fa-check text-emerald-600 mr-1.5"></i> Structured Request for Quote (RFQ) comparison matrix</td>
                        </tr>
                        <tr>
                            <td class="font-bold">Breakdown Response</td>
                            <td class="text-[#526174]">Days of machine downtime waiting for supplier callbacks</td>
                            <td class="text-[#172033] font-semibold"><i class="fa-solid fa-bolt text-[#F97316] mr-1.5"></i> High-priority Emergency Breakdown broadcast alerts</td>
                        </tr>
                        <tr>
                            <td class="font-bold">Technical Installation</td>
                            <td class="text-[#526174]">Independent search for technicians with unverified skillsets</td>
                            <td class="text-[#172033] font-semibold"><i class="fa-solid fa-check text-emerald-600 mr-1.5"></i> Integrated field service technician network (PLC, CNC, Hydraulics)</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </section>

        <!-- ======================================================================== -->
        <!-- 3. 6 CORE PLATFORM DIFFERENTIATORS                                       -->
        <!-- ======================================================================== -->
        <section class="space-y-8">
            <div class="text-center space-y-2">
                <span class="text-xs font-mono font-bold text-[#1677FF] uppercase tracking-wider">Engineered Advantages</span>
                <h2 class="text-2xl sm:text-3xl font-extrabold text-[#172033]">Core Platform Capabilities</h2>
                <p class="text-xs sm:text-sm text-[#526174] max-w-2xl mx-auto">Engineered to support plant engineers, procurement managers, and industrial suppliers.</p>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                
                <div class="card hover:border-[#1677FF] space-y-3">
                    <div class="w-10 h-10 rounded-xl bg-blue-100 text-[#1677FF] flex items-center justify-center font-bold text-lg">
                        <i class="fa-solid fa-barcode"></i>
                    </div>
                    <h3 class="text-base font-bold text-[#172033]">OEM & Machine Cross-Matching</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">
                        Find exact replacement parts by OEM part number or compatible machine model (CNC lathe, hydraulic press, air compressor) to prevent wrong orders.
                    </p>
                </div>

                <div class="card hover:border-emerald-500 space-y-3">
                    <div class="w-10 h-10 rounded-xl bg-emerald-100 text-emerald-700 flex items-center justify-center font-bold text-lg">
                        <i class="fa-solid fa-warehouse"></i>
                    </div>
                    <h3 class="text-base font-bold text-[#172033]">Real-Time Stock Visibility</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">
                        Know whether a part is in ready stock or on backorder before issuing RFQs. Eliminate wasted inquiries to suppliers with empty shelves.
                    </p>
                </div>

                <div class="card hover:border-[#F97316] space-y-3">
                    <div class="w-10 h-10 rounded-xl bg-orange-100 text-[#F97316] flex items-center justify-center font-bold text-lg">
                        <i class="fa-solid fa-bolt"></i>
                    </div>
                    <h3 class="text-base font-bold text-[#172033]">Emergency Breakdown Protocol</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">
                        When critical production halts, broadcast urgent sourcing requests to regional suppliers to secure same-day or next-day delivery dispatch.
                    </p>
                </div>

                <div class="card hover:border-cyan-500 space-y-3">
                    <div class="w-10 h-10 rounded-xl bg-cyan-100 text-cyan-700 flex items-center justify-center font-bold text-lg">
                        <i class="fa-solid fa-file-invoice-dollar"></i>
                    </div>
                    <h3 class="text-base font-bold text-[#172033]">Structured RFQ Workflow</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">
                        Issue standardized commercial inquiries specifying volume discounts, tax breakdown, and delivery milestones with side-by-side evaluation.
                    </p>
                </div>

                <div class="card hover:border-indigo-500 space-y-3">
                    <div class="w-10 h-10 rounded-xl bg-indigo-100 text-indigo-700 flex items-center justify-center font-bold text-lg">
                        <i class="fa-solid fa-wrench"></i>
                    </div>
                    <h3 class="text-base font-bold text-[#172033]">Certified Field Technicians</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">
                        Connect with specialized service providers experienced in PLC automation, motor rewinding, and hydraulic commissioning for installation support.
                    </p>
                </div>

                <div class="card hover:border-amber-500 space-y-3">
                    <div class="w-10 h-10 rounded-xl bg-amber-100 text-[#B87333] flex items-center justify-center font-bold text-lg">
                        <i class="fa-solid fa-shield-halved"></i>
                    </div>
                    <h3 class="text-base font-bold text-[#172033]">Supplier Verification System</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">
                        Administrative verification review checks supplier business registration and compliance to ensure buyers deal with legitimate partners.
                    </p>
                </div>

            </div>
        </section>

        <!-- ======================================================================== -->
        <!-- 4. VALUE BY STAKEHOLDER (3 COLUMNS)                                      -->
        <!-- ======================================================================== -->
        <section class="space-y-8">
            <div class="text-center space-y-2">
                <span class="text-xs font-mono font-bold text-[#1677FF] uppercase tracking-wider">Stakeholder Benefits</span>
                <h2 class="text-2xl sm:text-3xl font-extrabold text-[#172033]">Tailored for the Industrial Triad</h2>
                <p class="text-xs sm:text-sm text-[#526174] max-w-2xl mx-auto">How each ecosystem participant achieves operational and commercial efficiency.</p>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                
                <!-- Factories -->
                <div class="bg-white border border-[#D9E1EA] rounded-3xl p-6 sm:p-8 space-y-4 shadow-xs">
                    <div class="w-12 h-12 rounded-2xl bg-blue-100 text-[#1677FF] flex items-center justify-center font-bold text-2xl">
                        <i class="fa-solid fa-industry"></i>
                    </div>
                    <h3 class="text-lg font-bold text-[#172033]">For Industrial Buyers</h3>
                    <ul class="space-y-2 text-xs text-[#526174]">
                        <li class="flex items-start gap-2"><i class="fa-solid fa-check text-[#1677FF] mt-0.5"></i> Single portal for all machine maintenance spares</li>
                        <li class="flex items-start gap-2"><i class="fa-solid fa-check text-[#1677FF] mt-0.5"></i> Competitive quotes from multiple regional vendors</li>
                        <li class="flex items-start gap-2"><i class="fa-solid fa-check text-[#1677FF] mt-0.5"></i> Rapid escalation during machine breakdown events</li>
                        <li class="flex items-start gap-2"><i class="fa-solid fa-check text-[#1677FF] mt-0.5"></i> On-demand field service booking</li>
                    </ul>
                </div>

                <!-- Suppliers -->
                <div class="bg-white border border-[#D9E1EA] rounded-3xl p-6 sm:p-8 space-y-4 shadow-xs">
                    <div class="w-12 h-12 rounded-2xl bg-emerald-100 text-emerald-700 flex items-center justify-center font-bold text-2xl">
                        <i class="fa-solid fa-warehouse"></i>
                    </div>
                    <h3 class="text-lg font-bold text-[#172033]">For Spare-Part Suppliers</h3>
                    <ul class="space-y-2 text-xs text-[#526174]">
                        <li class="flex items-start gap-2"><i class="fa-solid fa-check text-emerald-600 mt-0.5"></i> Direct access to manufacturing plant purchase inquiries</li>
                        <li class="flex items-start gap-2"><i class="fa-solid fa-check text-emerald-600 mt-0.5"></i> Showcase ready stock to high-intent industrial buyers</li>
                        <li class="flex items-start gap-2"><i class="fa-solid fa-check text-emerald-600 mt-0.5"></i> Streamlined digital quotation management dashboard</li>
                        <li class="flex items-start gap-2"><i class="fa-solid fa-check text-emerald-600 mt-0.5"></i> Verified partner badge builds buyer confidence</li>
                    </ul>
                </div>

                <!-- Technicians -->
                <div class="bg-white border border-[#D9E1EA] rounded-3xl p-6 sm:p-8 space-y-4 shadow-xs">
                    <div class="w-12 h-12 rounded-2xl bg-cyan-100 text-cyan-700 flex items-center justify-center font-bold text-2xl">
                        <i class="fa-solid fa-wrench"></i>
                    </div>
                    <h3 class="text-lg font-bold text-[#172033]">For Field Technicians</h3>
                    <ul class="space-y-2 text-xs text-[#526174]">
                        <li class="flex items-start gap-2"><i class="fa-solid fa-check text-cyan-700 mt-0.5"></i> Discover plant repair and commissioning contracts</li>
                        <li class="flex items-start gap-2"><i class="fa-solid fa-check text-cyan-700 mt-0.5"></i> Showcase certified skills across automation and hydraulics</li>
                        <li class="flex items-start gap-2"><i class="fa-solid fa-check text-cyan-700 mt-0.5"></i> Set transparent hourly service charges</li>
                        <li class="flex items-start gap-2"><i class="fa-solid fa-check text-cyan-700 mt-0.5"></i> Build professional reputation through verified ratings</li>
                    </ul>
                </div>

            </div>
        </section>

        <!-- ======================================================================== -->
        <!-- 5. HONEST ACADEMIC PROJECT STATEMENT                                     -->
        <!-- ======================================================================== -->
        <div class="bg-[#F8FAFC] border-2 border-dashed border-[#D9E1EA] rounded-3xl p-8 text-center space-y-3">
            <span class="copper-tag">PROJECT TRANSPARENCY NOTICE</span>
            <h3 class="text-lg font-bold text-[#172033]">Master of Computer Applications (MCA) Project</h3>
            <p class="text-xs text-[#526174] max-w-2xl mx-auto leading-relaxed">
                This web platform is engineered as an academic demonstration of an industrial B2B procurement architecture. All listed suppliers, inventory pricing, and technician profiles represent sample demonstration data developed to illustrate the enterprise workflow and database design.
            </p>
        </div>

        <!-- ======================================================================== -->
        <!-- 6. BOTTOM CTA STRIP                                                      -->
        <!-- ======================================================================== -->
        <div class="bg-[#172033] text-white rounded-3xl p-8 sm:p-12 text-center space-y-6 shadow-xl">
            <h2 class="text-2xl sm:text-3xl font-black tracking-tight">Experience Digital Industrial Procurement</h2>
            <p class="text-xs sm:text-sm text-slate-300 max-w-2xl mx-auto">
                Explore the indexed spare parts catalog, evaluate regional supplier stock, or register your facility.
            </p>
            <div class="flex flex-col sm:flex-row items-center justify-center gap-4 pt-2">
                <a href="~/Public/Parts.aspx" runat="server" class="btn-primary text-xs py-3.5 px-8 font-extrabold w-full sm:w-auto text-center">
                    <i class="fa-solid fa-magnifying-glass mr-1.5"></i> Explore Spare Parts
                </a>
                <a href="~/Account/Register.aspx" runat="server" class="btn-secondary text-xs py-3.5 px-8 font-bold w-full sm:w-auto text-center">
                    Register Facility Account
                </a>
            </div>
        </div>

    </div>
</asp:Content>
