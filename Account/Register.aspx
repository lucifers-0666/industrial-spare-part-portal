<%@ Page Title="Portal Registration" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="IndustrialSparePartPortal.Account.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="py-12 bg-slate-50 flex items-center justify-center min-h-[80vh] px-4">
        <div class="max-w-2xl w-full">
            <div class="card shadow-lg border border-slate-200 p-8 bg-white">
                <div class="text-center mb-8">
                    <h2 class="text-2xl font-bold text-slate-900">Industrial Portal Registration</h2>
                    <p class="text-xs text-slate-500 mt-1">Select your user role and complete registration</p>
                </div>

                <!-- Alert Message -->
                <asp:Panel ID="pnlAlert" runat="server" Visible="false" CssClass="mb-6 p-4 rounded-lg text-xs flex items-center gap-2">
                    <i class="fa-solid fa-circle-info text-base shrink-0"></i>
                    <asp:Literal ID="litAlertMessage" runat="server"></asp:Literal>
                </asp:Panel>

                <!-- Role Selection Radio Group -->
                <div class="mb-8">
                    <label class="form-label text-center block mb-3">Choose Account Type</label>
                    <div class="grid grid-cols-3 gap-3">
                        <asp:RadioButton ID="rdoFactory" runat="server" GroupName="RoleGroup" AutoPostBack="true" OnCheckedChanged="Role_CheckedChanged" Checked="true" Text=" Factory / Buyer" CssClass="text-xs font-semibold text-slate-800 p-3 rounded-lg border border-slate-200 flex items-center justify-center gap-2 cursor-pointer hover:bg-slate-50" />
                        <asp:RadioButton ID="rdoSupplier" runat="server" GroupName="RoleGroup" AutoPostBack="true" OnCheckedChanged="Role_CheckedChanged" Text=" Supplier" CssClass="text-xs font-semibold text-slate-800 p-3 rounded-lg border border-slate-200 flex items-center justify-center gap-2 cursor-pointer hover:bg-slate-50" />
                        <asp:RadioButton ID="rdoTechnician" runat="server" GroupName="RoleGroup" AutoPostBack="true" OnCheckedChanged="Role_CheckedChanged" Text=" Technician" CssClass="text-xs font-semibold text-slate-800 p-3 rounded-lg border border-slate-200 flex items-center justify-center gap-2 cursor-pointer hover:bg-slate-50" />
                    </div>
                </div>

                <!-- Common User Credentials -->
                <div class="space-y-4 border-t border-slate-100 pt-6">
                    <h3 class="text-xs font-bold text-slate-700 uppercase tracking-wider">Account Credentials</h3>
                    
                    <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                        <div>
                            <label class="form-label">Full Name / Primary Contact</label>
                            <asp:TextBox ID="txtFullName" runat="server" CssClass="form-input" Placeholder="John Doe" Required="true"></asp:TextBox>
                        </div>
                        <div>
                            <label class="form-label">Email Address</label>
                            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-input" Placeholder="john@company.com" Required="true"></asp:TextBox>
                        </div>
                    </div>

                    <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                        <div>
                            <label class="form-label">Password</label>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-input" Placeholder="••••••••" Required="true"></asp:TextBox>
                        </div>
                        <div>
                            <label class="form-label">Phone Number</label>
                            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-input" Placeholder="+91 9876543210"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <!-- Role Dynamic Profile Fields -->
                <asp:Panel ID="pnlFactoryFields" runat="server" CssClass="space-y-4 border-t border-slate-100 pt-6 mt-6">
                    <h3 class="text-xs font-bold text-blue-600 uppercase tracking-wider"><i class="fa-solid fa-industry mr-1"></i> Factory / Industrial Company Info</h3>
                    
                    <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                        <div>
                            <label class="form-label">Company / Factory Name</label>
                            <asp:TextBox ID="txtFactoryCompany" runat="server" CssClass="form-input" Placeholder="Apex Precision Manufacturing Ltd"></asp:TextBox>
                        </div>
                        <div>
                            <label class="form-label">Industry Type</label>
                            <asp:TextBox ID="txtIndustryType" runat="server" CssClass="form-input" Placeholder="Automotive / CNC Machining / Hydraulics"></asp:TextBox>
                        </div>
                    </div>

                    <div class="grid grid-cols-1 sm:grid-cols-3 gap-4">
                        <div>
                            <label class="form-label">City</label>
                            <asp:TextBox ID="txtFactoryCity" runat="server" CssClass="form-input" Placeholder="Pune"></asp:TextBox>
                        </div>
                        <div>
                            <label class="form-label">State</label>
                            <asp:TextBox ID="txtFactoryState" runat="server" CssClass="form-input" Placeholder="Maharashtra"></asp:TextBox>
                        </div>
                        <div>
                            <label class="form-label">GSTIN (Optional)</label>
                            <asp:TextBox ID="txtFactoryGstin" runat="server" CssClass="form-input" Placeholder="27AAAAA0000A1Z5"></asp:TextBox>
                        </div>
                    </div>
                </asp:Panel>

                <asp:Panel ID="pnlSupplierFields" runat="server" Visible="false" CssClass="space-y-4 border-t border-slate-100 pt-6 mt-6">
                    <h3 class="text-xs font-bold text-emerald-600 uppercase tracking-wider"><i class="fa-solid fa-warehouse mr-1"></i> Supplier Business Details</h3>
                    
                    <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                        <div>
                            <label class="form-label">Supplier Business Name</label>
                            <asp:TextBox ID="txtSupplierCompany" runat="server" CssClass="form-input" Placeholder="National Industrial Spares Co"></asp:TextBox>
                        </div>
                        <div>
                            <label class="form-label">Business Registration No</label>
                            <asp:TextBox ID="txtRegNo" runat="server" CssClass="form-input" Placeholder="REG-882910"></asp:TextBox>
                        </div>
                    </div>

                    <div class="grid grid-cols-1 sm:grid-cols-3 gap-4">
                        <div>
                            <label class="form-label">City</label>
                            <asp:TextBox ID="txtSupplierCity" runat="server" CssClass="form-input" Placeholder="Mumbai"></asp:TextBox>
                        </div>
                        <div>
                            <label class="form-label">State</label>
                            <asp:TextBox ID="txtSupplierState" runat="server" CssClass="form-input" Placeholder="Maharashtra"></asp:TextBox>
                        </div>
                        <div>
                            <label class="form-label">GSTIN</label>
                            <asp:TextBox ID="txtSupplierGstin" runat="server" CssClass="form-input" Placeholder="27BBBBB0000B1Z2"></asp:TextBox>
                        </div>
                    </div>
                </asp:Panel>

                <asp:Panel ID="pnlTechnicianFields" runat="server" Visible="false" CssClass="space-y-4 border-t border-slate-100 pt-6 mt-6">
                    <h3 class="text-xs font-bold text-cyan-600 uppercase tracking-wider"><i class="fa-solid fa-wrench mr-1"></i> Technician Professional Details</h3>
                    
                    <div>
                        <label class="form-label">Technical Skills Summary</label>
                        <asp:TextBox ID="txtSkills" runat="server" CssClass="form-input" Placeholder="Hydraulic press troubleshooting, CNC lathe maintenance, VFD programming"></asp:TextBox>
                    </div>

                    <div class="grid grid-cols-1 sm:grid-cols-3 gap-4">
                        <div>
                            <label class="form-label">Experience (Years)</label>
                            <asp:TextBox ID="txtExperience" runat="server" TextMode="Number" CssClass="form-input" Placeholder="5"></asp:TextBox>
                        </div>
                        <div>
                            <label class="form-label">Hourly Rate (₹)</label>
                            <asp:TextBox ID="txtHourlyRate" runat="server" TextMode="Number" CssClass="form-input" Placeholder="1200"></asp:TextBox>
                        </div>
                        <div>
                            <label class="form-label">City</label>
                            <asp:TextBox ID="txtTechCity" runat="server" CssClass="form-input" Placeholder="Ahmedabad"></asp:TextBox>
                        </div>
                    </div>
                </asp:Panel>

                <!-- Submit Button -->
                <div class="mt-8">
                    <asp:Button ID="btnRegister" runat="server" Text="Complete Registration" OnClick="btnRegister_Click" CssClass="btn-primary w-full py-3 text-sm font-semibold rounded-lg shadow-sm" />
                </div>

                <div class="mt-6 pt-6 border-t border-slate-100 text-center text-xs text-slate-500">
                    Already registered? 
                    <a href="~/Account/Login.aspx" runat="server" class="font-bold text-blue-600 hover:text-blue-700 ml-1">Sign In Here</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
