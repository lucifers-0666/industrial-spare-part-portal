<%@ Page Title="Register Industrial Portal Account" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="IndustrialSparePartPortal.Account.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="description" content="Register as a Factory Buyer, Spare-Part Supplier, or Certified Technician on SPAREFINDER." />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="py-12 bg-[#F8FAFC] flex items-center justify-center min-h-[80vh] px-4 sm:px-6">
        <div class="max-w-2xl w-full">
            <div class="surface-card p-7 sm:p-9 bg-white shadow-md border border-[#CBD5E1] space-y-6">
                
                <div class="text-center space-y-1.5">
                    <div class="flex justify-center items-center gap-2">
                        <span class="spec-tag spec-tag-blue">ENTITY ONBOARDING</span>
                    </div>
                    <h2 class="text-2xl font-black text-[#0F172A] tracking-tight m-0">Portal Account Registration</h2>
                    <p class="text-xs text-[#64748B] m-0">Select your industrial role and configure your workspace credentials</p>
                </div>

                <!-- Alert Message -->
                <asp:Panel ID="pnlAlert" runat="server" Visible="false" CssClass="p-3.5 rounded-lg text-xs flex items-start gap-2.5">
                    <i class="fa-solid fa-circle-info text-sm shrink-0 mt-0.5"></i>
                    <div>
                        <asp:Literal ID="litAlertMessage" runat="server"></asp:Literal>
                    </div>
                </asp:Panel>

                <!-- Role Selection Radio Group -->
                <div class="space-y-2">
                    <label class="form-label text-center block mb-2">Select User Role</label>
                    <div class="grid grid-cols-1 sm:grid-cols-3 gap-3">
                        <asp:RadioButton ID="rdoFactory" runat="server" GroupName="RoleGroup" AutoPostBack="true" OnCheckedChanged="Role_CheckedChanged" Checked="true" Text=" Factory Buyer" CssClass="text-xs font-bold text-[#0F172A] p-3 rounded-xl border border-[#CBD5E1] flex items-center justify-center gap-2 cursor-pointer hover:bg-slate-50 transition-colors" />
                        <asp:RadioButton ID="rdoSupplier" runat="server" GroupName="RoleGroup" AutoPostBack="true" OnCheckedChanged="Role_CheckedChanged" Text=" Parts Supplier" CssClass="text-xs font-bold text-[#0F172A] p-3 rounded-xl border border-[#CBD5E1] flex items-center justify-center gap-2 cursor-pointer hover:bg-slate-50 transition-colors" />
                        <asp:RadioButton ID="rdoTechnician" runat="server" GroupName="RoleGroup" AutoPostBack="true" OnCheckedChanged="Role_CheckedChanged" Text=" Field Technician" CssClass="text-xs font-bold text-[#0F172A] p-3 rounded-xl border border-[#CBD5E1] flex items-center justify-center gap-2 cursor-pointer hover:bg-slate-50 transition-colors" />
                    </div>
                </div>

                <!-- Common User Credentials -->
                <div class="space-y-4 border-t border-[#E2E8F0] pt-5">
                    <div class="flex items-center gap-2">
                        <span class="spec-tag spec-tag-blue">01 &middot; LOGIN CREDENTIALS</span>
                    </div>
                    
                    <div class="grid grid-cols-1 sm:grid-cols-2 gap-4 text-xs">
                        <div>
                            <label class="form-label" for="<%= txtFullName.ClientID %>">Full Name / Primary Contact <span class="text-red-500">*</span></label>
                            <asp:TextBox ID="txtFullName" runat="server" CssClass="form-input" Placeholder="e.g. Ramesh Patel" Required="true"></asp:TextBox>
                        </div>
                        <div>
                            <label class="form-label" for="<%= txtEmail.ClientID %>">Email Address <span class="text-red-500">*</span></label>
                            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-input" Placeholder="contact@company.com" Required="true"></asp:TextBox>
                        </div>
                    </div>

                    <div class="grid grid-cols-1 sm:grid-cols-2 gap-4 text-xs">
                        <div>
                            <label class="form-label" for="<%= txtPassword.ClientID %>">Password <span class="text-red-500">*</span></label>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-input" Placeholder="••••••••" Required="true"></asp:TextBox>
                        </div>
                        <div>
                            <label class="form-label" for="<%= txtPhone.ClientID %>">Contact Phone Number</label>
                            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-input font-mono" Placeholder="+91 9876543210"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <!-- Role Dynamic Profile Fields: Factory -->
                <asp:Panel ID="pnlFactoryFields" runat="server" CssClass="space-y-4 border-t border-[#E2E8F0] pt-5">
                    <div class="flex items-center gap-2">
                        <span class="spec-tag spec-tag-blue"><i class="fa-solid fa-industry"></i> 02 &middot; FACTORY / INDUSTRIAL PLANT PROFILE</span>
                    </div>
                    
                    <div class="grid grid-cols-1 sm:grid-cols-2 gap-4 text-xs">
                        <div>
                            <label class="form-label" for="<%= txtFactoryCompany.ClientID %>">Company / Plant Name</label>
                            <asp:TextBox ID="txtFactoryCompany" runat="server" CssClass="form-input" Placeholder="e.g. Precision Engineering Ltd"></asp:TextBox>
                        </div>
                        <div>
                            <label class="form-label" for="<%= txtIndustryType.ClientID %>">Industry Type</label>
                            <asp:TextBox ID="txtIndustryType" runat="server" CssClass="form-input" Placeholder="Automotive / CNC Machining / Hydraulics"></asp:TextBox>
                        </div>
                    </div>

                    <div class="grid grid-cols-1 sm:grid-cols-3 gap-4 text-xs">
                        <div>
                            <label class="form-label" for="<%= txtFactoryCity.ClientID %>">City</label>
                            <asp:TextBox ID="txtFactoryCity" runat="server" CssClass="form-input" Placeholder="Pune"></asp:TextBox>
                        </div>
                        <div>
                            <label class="form-label" for="<%= txtFactoryState.ClientID %>">State</label>
                            <asp:TextBox ID="txtFactoryState" runat="server" CssClass="form-input" Placeholder="Maharashtra"></asp:TextBox>
                        </div>
                        <div>
                            <label class="form-label" for="<%= txtFactoryGstin.ClientID %>">GSTIN (Optional)</label>
                            <asp:TextBox ID="txtFactoryGstin" runat="server" CssClass="form-input font-mono" Placeholder="27AAAAA0000A1Z5"></asp:TextBox>
                        </div>
                    </div>
                </asp:Panel>

                <!-- Role Dynamic Profile Fields: Supplier -->
                <asp:Panel ID="pnlSupplierFields" runat="server" Visible="false" CssClass="space-y-4 border-t border-[#E2E8F0] pt-5">
                    <div class="flex items-center gap-2">
                        <span class="spec-tag spec-tag-emerald"><i class="fa-solid fa-warehouse"></i> 02 &middot; SUPPLIER WAREHOUSE DETAILS</span>
                    </div>
                    
                    <div class="grid grid-cols-1 sm:grid-cols-2 gap-4 text-xs">
                        <div>
                            <label class="form-label" for="<%= txtSupplierCompany.ClientID %>">Supplier Business Name</label>
                            <asp:TextBox ID="txtSupplierCompany" runat="server" CssClass="form-input" Placeholder="National Spares & Bearing Co"></asp:TextBox>
                        </div>
                        <div>
                            <label class="form-label" for="<%= txtRegNo.ClientID %>">Business Trade License / Reg #</label>
                            <asp:TextBox ID="txtRegNo" runat="server" CssClass="form-input font-mono" Placeholder="REG-882910"></asp:TextBox>
                        </div>
                    </div>

                    <div class="grid grid-cols-1 sm:grid-cols-3 gap-4 text-xs">
                        <div>
                            <label class="form-label" for="<%= txtSupplierCity.ClientID %>">City</label>
                            <asp:TextBox ID="txtSupplierCity" runat="server" CssClass="form-input" Placeholder="Mumbai"></asp:TextBox>
                        </div>
                        <div>
                            <label class="form-label" for="<%= txtSupplierState.ClientID %>">State</label>
                            <asp:TextBox ID="txtSupplierState" runat="server" CssClass="form-input" Placeholder="Maharashtra"></asp:TextBox>
                        </div>
                        <div>
                            <label class="form-label" for="<%= txtSupplierGstin.ClientID %>">GSTIN</label>
                            <asp:TextBox ID="txtSupplierGstin" runat="server" CssClass="form-input font-mono" Placeholder="27BBBBB0000B1Z2"></asp:TextBox>
                        </div>
                    </div>
                </asp:Panel>

                <!-- Role Dynamic Profile Fields: Technician -->
                <asp:Panel ID="pnlTechnicianFields" runat="server" Visible="false" CssClass="space-y-4 border-t border-[#E2E8F0] pt-5">
                    <div class="flex items-center gap-2">
                        <span class="spec-tag spec-tag-orange"><i class="fa-solid fa-wrench"></i> 02 &middot; TECHNICIAN PROFESSIONAL QUALIFICATIONS</span>
                    </div>
                    
                    <div class="text-xs">
                        <label class="form-label" for="<%= txtSkills.ClientID %>">Technical Skills Summary</label>
                        <asp:TextBox ID="txtSkills" runat="server" CssClass="form-input" Placeholder="Hydraulic press troubleshooting, CNC lathe servo tuning, PLC programming"></asp:TextBox>
                    </div>

                    <div class="grid grid-cols-1 sm:grid-cols-3 gap-4 text-xs">
                        <div>
                            <label class="form-label" for="<%= txtExperience.ClientID %>">Experience (Years)</label>
                            <asp:TextBox ID="txtExperience" runat="server" TextMode="Number" CssClass="form-input font-mono" Placeholder="5"></asp:TextBox>
                        </div>
                        <div>
                            <label class="form-label" for="<%= txtHourlyRate.ClientID %>">Hourly Rate (₹)</label>
                            <asp:TextBox ID="txtHourlyRate" runat="server" TextMode="Number" CssClass="form-input font-mono" Placeholder="1200"></asp:TextBox>
                        </div>
                        <div>
                            <label class="form-label" for="<%= txtTechCity.ClientID %>">Base City</label>
                            <asp:TextBox ID="txtTechCity" runat="server" CssClass="form-input" Placeholder="Ahmedabad"></asp:TextBox>
                        </div>
                    </div>
                </asp:Panel>

                <!-- Complete Registration Button -->
                <div class="pt-2">
                    <asp:Button ID="btnRegister" runat="server" Text="Complete Entity Registration →" OnClick="btnRegister_Click" CssClass="btn-primary w-full justify-center py-3 text-xs font-bold shadow-xs cursor-pointer" />
                </div>

                <div class="pt-4 border-t border-[#E2E8F0] text-center text-xs text-[#64748B]">
                    Already registered? 
                    <a href="~/Account/Login.aspx" runat="server" class="font-bold text-[#1D4ED8] hover:underline ml-1">Sign In Here</a>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
