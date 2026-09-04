<%@ Page Title="Emergency Breakdown Sourcing" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Emergency.aspx.cs" Inherits="IndustrialSparePartPortal.Public.Emergency" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <!-- 1. Page Header Banner -->
    <div class="page-header-banner text-center space-y-4 bg-gradient-to-b from-orange-50/70 via-white to-[#F8FAFC] py-14 border-b border-[#D9E1EA]">
        <span class="inline-flex items-center gap-2 px-3 py-1 rounded-full text-xs font-black bg-[#F97316] text-white uppercase tracking-wider shadow-xs">
            <i class="fa-solid fa-triangle-exclamation animate-pulse"></i> HIGH-PRIORITY PROCUREMENT
        </span>
        <h1 class="text-3xl sm:text-4xl lg:text-5xl font-black text-[#172033] tracking-tight">
            Emergency Breakdown Sourcing Desk
        </h1>
        <p class="text-sm sm:text-base text-[#526174] max-w-3xl mx-auto leading-relaxed">
            When production lines halt, traditional procurement is too slow. Broadcast urgent spare-part requirements to regional verified suppliers and mobilize on-call field service engineers.
        </p>
    </div>

    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12 space-y-16">
        
        <!-- 2. Breakdown Protocol Sequence (4 Steps) -->
        <section class="space-y-6">
            <div class="text-center space-y-2">
                <span class="text-xs font-mono font-bold text-[#F97316] uppercase tracking-wider">Fast-Track Sequence</span>
                <h2 class="text-2xl sm:text-3xl font-extrabold text-[#172033]">How Emergency Sourcing Operates</h2>
                <p class="text-xs sm:text-sm text-[#526174] max-w-2xl mx-auto">Engineered to bypass multi-day vendor inquiries and secure parts within hours.</p>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
                
                <div class="card border-orange-200 hover:border-[#F97316] space-y-3 relative">
                    <div class="w-10 h-10 rounded-xl bg-orange-100 text-[#F97316] flex items-center justify-center font-bold text-sm">
                        01
                    </div>
                    <h3 class="text-base font-bold text-[#172033]">1. Log Breakdown</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">
                        Plant engineer submits stopped machine details, OEM part numbers, and failure symptoms with critical urgency level.
                    </p>
                </div>

                <div class="card border-orange-200 hover:border-[#F97316] space-y-3 relative">
                    <div class="w-10 h-10 rounded-xl bg-orange-100 text-[#F97316] flex items-center justify-center font-bold text-sm">
                        02
                    </div>
                    <h3 class="text-base font-bold text-[#172033]">2. Supplier Broadcast</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">
                        Platform instantly alerts nearby verified stockists possessing matching category inventory within proximity radius.
                    </p>
                </div>

                <div class="card border-orange-200 hover:border-[#F97316] space-y-3 relative">
                    <div class="w-10 h-10 rounded-xl bg-orange-100 text-[#F97316] flex items-center justify-center font-bold text-sm">
                        03
                    </div>
                    <h3 class="text-base font-bold text-[#172033]">3. Rapid Quotation</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">
                        Suppliers confirm ready stock and quote expedited courier charges or immediate warehouse pickup availability.
                    </p>
                </div>

                <div class="card border-orange-200 hover:border-[#F97316] space-y-3 relative">
                    <div class="w-10 h-10 rounded-xl bg-orange-100 text-[#F97316] flex items-center justify-center font-bold text-sm">
                        04
                    </div>
                    <h3 class="text-base font-bold text-[#172033]">4. Priority Fitting</h3>
                    <p class="text-xs text-[#526174] leading-relaxed">
                        Part dispatches via expedited courier while on-call field technicians are alerted for immediate on-site replacement.
                    </p>
                </div>

            </div>
        </section>

        <!-- 3. Two-Column Interactive Request Card + Checklist -->
        <div class="grid grid-cols-1 lg:grid-cols-12 gap-8 items-start">
            
            <!-- Left: Interactive Emergency Sourcing Form -->
            <div class="lg:col-span-7 bg-white border-2 border-orange-200 rounded-3xl p-6 sm:p-8 space-y-6 shadow-md">
                <div class="flex items-center justify-between border-b border-[#D9E1EA] pb-4">
                    <div class="flex items-center gap-2.5">
                        <div class="w-9 h-9 rounded-xl bg-[#F97316] text-white flex items-center justify-center text-sm font-bold shadow-xs">
                            <i class="fa-solid fa-bolt"></i>
                        </div>
                        <div>
                            <h3 class="text-lg font-bold text-[#172033]">Start Emergency Sourcing Broadcast</h3>
                            <span class="text-xs text-[#526174]">Fast-track notification to regional inventory holders</span>
                        </div>
                    </div>
                    <span class="copper-tag bg-orange-50 text-[#F97316] border-orange-200">PRIORITY DESK</span>
                </div>

                <asp:Panel ID="pnlNotice" runat="server" Visible="false" CssClass="p-4 rounded-xl bg-blue-50 border border-blue-200 text-xs text-[#172033] space-y-1">
                    <strong class="font-bold block text-[#1677FF]"><i class="fa-solid fa-circle-info mr-1"></i> Sign In Required to Broadcast</strong>
                    <span>Your emergency request details are saved. Please sign in or register to dispatch the broadcast to regional suppliers.</span>
                </asp:Panel>

                <div class="space-y-4 text-xs">
                    <div>
                        <label class="font-bold text-[#172033] block mb-1">Equipment / Machine Name <span class="text-red-500">*</span></label>
                        <asp:TextBox ID="txtMachineName" runat="server" CssClass="w-full px-4 py-3 bg-[#F8FAFC] border border-[#D9E1EA] rounded-xl text-sm text-[#172033] focus:bg-white focus:outline-none focus:border-[#F97316] transition-all" Placeholder="e.g. CNC Lathe X200, 500T Hydraulic Press, Air Compressor"></asp:TextBox>
                    </div>

                    <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                        <div>
                            <label class="font-bold text-[#172033] block mb-1">OEM Part Number / Specification <span class="text-red-500">*</span></label>
                            <asp:TextBox ID="txtPartNumber" runat="server" CssClass="w-full px-4 py-3 bg-[#F8FAFC] border border-[#D9E1EA] rounded-xl text-sm text-[#172033] focus:bg-white focus:outline-none focus:border-[#F97316] transition-all" Placeholder="e.g. 6210-2RS, PART-HYD-001"></asp:TextBox>
                        </div>
                        <div>
                            <label class="font-bold text-[#172033] block mb-1">Required Quantity <span class="text-red-500">*</span></label>
                            <asp:TextBox ID="txtQuantity" runat="server" TextMode="Number" Text="1" CssClass="w-full px-4 py-3 bg-[#F8FAFC] border border-[#D9E1EA] rounded-xl text-sm text-[#172033] focus:bg-white focus:outline-none focus:border-[#F97316] transition-all"></asp:TextBox>
                        </div>
                    </div>

                    <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                        <div>
                            <label class="font-bold text-[#172033] block mb-1">Urgency Severity Level</label>
                            <asp:DropDownList ID="ddlUrgency" runat="server" CssClass="w-full px-4 py-3 bg-[#F8FAFC] border border-[#D9E1EA] rounded-xl text-sm text-[#172033] focus:bg-white focus:outline-none focus:border-[#F97316] transition-all">
                                <asp:ListItem Value="Critical" Text="CRITICAL - Assembly Line Stopped"></asp:ListItem>
                                <asp:ListItem Value="Urgent" Text="URGENT - Failure Expected Within 24 Hrs"></asp:ListItem>
                                <asp:ListItem Value="Priority" Text="PRIORITY - Zero Safety Buffer Stock"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div>
                            <label class="font-bold text-[#172033] block mb-1">Plant Location / City <span class="text-red-500">*</span></label>
                            <asp:TextBox ID="txtCity" runat="server" CssClass="w-full px-4 py-3 bg-[#F8FAFC] border border-[#D9E1EA] rounded-xl text-sm text-[#172033] focus:bg-white focus:outline-none focus:border-[#F97316] transition-all" Placeholder="e.g. Pune, Ahmedabad, Sanand GIDC"></asp:TextBox>
                        </div>
                    </div>

                    <div>
                        <label class="font-bold text-[#172033] block mb-1">Breakdown Description / Failure Symptoms</label>
                        <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="3" CssClass="w-full px-4 py-3 bg-[#F8FAFC] border border-[#D9E1EA] rounded-xl text-sm text-[#172033] focus:bg-white focus:outline-none focus:border-[#F97316] transition-all" Placeholder="Describe observed failure symptoms (e.g. pressure drop below 50 bar, servo drive alarm code 0x4F, bearing overheating)..."></asp:TextBox>
                    </div>

                    <div class="pt-2">
                        <asp:Button ID="btnSubmitEmergency" runat="server" Text="Dispatch Emergency Broadcast →" OnClick="btnSubmitEmergency_Click" CssClass="btn-emergency w-full justify-center text-sm py-3.5 font-extrabold cursor-pointer shadow-md" />
                    </div>

                    <p class="text-[11px] text-slate-400 text-center m-0">
                        <i class="fa-solid fa-lock mr-1"></i> Requires authenticated Factory account. Unregistered users will be guided to quick registration.
                    </p>
                </div>
            </div>

            <!-- Right: Breakdown Triage Checklist & Helpline -->
            <div class="lg:col-span-5 space-y-6">
                
                <!-- Triage Checklist -->
                <div class="bg-white border border-[#D9E1EA] rounded-3xl p-6 sm:p-8 space-y-4 shadow-xs">
                    <h3 class="text-base font-bold text-[#172033] flex items-center gap-2">
                        <i class="fa-solid fa-clipboard-check text-[#1677FF]"></i> Plant Breakdown Triage Checklist
                    </h3>
                    <p class="text-xs text-[#526174]">Before submitting, gather these details to ensure suppliers provide accurate parts:</p>

                    <div class="space-y-3 text-xs">
                        <div class="p-3 bg-[#F8FAFC] rounded-xl border border-[#D9E1EA] flex items-start gap-2.5">
                            <i class="fa-solid fa-check text-emerald-600 mt-0.5"></i>
                            <div>
                                <strong class="text-[#172033] block font-bold">OEM Nameplate:</strong>
                                Photograph or note manufacturer model, serial number, and voltage/pressure ratings.
                            </div>
                        </div>
                        <div class="p-3 bg-[#F8FAFC] rounded-xl border border-[#D9E1EA] flex items-start gap-2.5">
                            <i class="fa-solid fa-check text-emerald-600 mt-0.5"></i>
                            <div>
                                <strong class="text-[#172033] block font-bold">Part Stamping:</strong>
                                Check component housing for stamped part numbers (e.g. 6204-2RS, R902401234).
                            </div>
                        </div>
                        <div class="p-3 bg-[#F8FAFC] rounded-xl border border-[#D9E1EA] flex items-start gap-2.5">
                            <i class="fa-solid fa-check text-emerald-600 mt-0.5"></i>
                            <div>
                                <strong class="text-[#172033] block font-bold">Installation Support:</strong>
                                Determine if an on-site technician is required to dismantle and reinstall the failed part.
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Emergency Helpline Card -->
                <div class="bg-gradient-to-br from-[#172033] to-[#273444] text-white rounded-3xl p-6 sm:p-8 space-y-4 shadow-lg">
                    <div class="flex items-center gap-3">
                        <div class="w-10 h-10 rounded-xl bg-[#F97316] text-white flex items-center justify-center font-bold text-lg">
                            <i class="fa-solid fa-headset"></i>
                        </div>
                        <div>
                            <span class="text-xs text-orange-400 font-bold uppercase tracking-wider block">Direct Desk Contact</span>
                            <h4 class="text-base font-bold text-white">Emergency Support Line</h4>
                        </div>
                    </div>
                    <p class="text-xs text-slate-300 leading-relaxed">
                        Need immediate assistance with a stopped production line? Our demonstration helpline connects plant buyers with platform support.
                    </p>
                    <div class="pt-1">
                        <a href="tel:18000000000" class="btn-emergency w-full justify-center text-sm py-3 font-mono font-bold block text-center">
                            <i class="fa-solid fa-phone mr-1.5"></i> 1800-000-0000 (Demo Helpline)
                        </a>
                    </div>
                </div>

            </div>

        </div>

    </div>
</asp:Content>
