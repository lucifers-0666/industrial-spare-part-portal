<%@ Page Title="Technician Network" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Technicians.aspx.cs" Inherits="IndustrialSparePartPortal.Public.Technicians" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header-banner text-center space-y-3">
        <span class="copper-badge"><i class="fa-solid fa-wrench"></i> Field Technical Support</span>
        <h1 class="text-3xl sm:text-4xl font-black text-[#172033]">Discover Certified Field Technicians</h1>
        <p class="text-sm text-[#526174] max-w-2xl mx-auto">Connect with technical specialists for machine installation, pump overhaul, and electrical commissioning.</p>
    </div>

    <div class="max-w-7xl mx-auto px-6 py-16">
        <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
            <!-- Tech Card 1 -->
            <div class="content-card space-y-4">
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
            <div class="content-card space-y-4">
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
            <div class="content-card space-y-4">
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
</asp:Content>

