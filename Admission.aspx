<%@ Page Title="Online Admission" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admission.aspx.cs" Inherits="CollegeWebsite.Admission" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Online Admission Form</h2>
    <p>Please fill out the form below to begin your admission process.</p>
    <hr />

    <asp:Panel ID="SuccessPanel" runat="server" Visible="false" CssClass="alert alert-success">
        <strong>Thank you!</strong> Your application has been submitted successfully. We will contact you shortly.
    </asp:Panel>

    <asp:Panel ID="FormPanel" runat="server">
        <div class="form-horizontal">
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="txtFullName" CssClass="col-md-2 control-label">Full Name</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="txtFullName" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFullName" ErrorMessage="Full Name is required." CssClass="text-danger" />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="txtDateOfBirth" CssClass="col-md-2 control-label">Date of Birth</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="txtDateOfBirth" CssClass="form-control" TextMode="Date" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDateOfBirth" ErrorMessage="Date of Birth is required." CssClass="text-danger" />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="txtEmail" CssClass="col-md-2 control-label">Email Address</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" TextMode="Email" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." CssClass="text-danger" />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="txtPhoneNumber" CssClass="col-md-2 control-label">Phone Number</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="txtPhoneNumber" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPhoneNumber" ErrorMessage="Phone Number is required." CssClass="text-danger" />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="ddlCourse" CssClass="col-md-2 control-label">Desired Course</asp:Label>
                <div class="col-md-10">
                    <asp:DropDownList ID="ddlCourse" runat="server" CssClass="form-control">
                        <asp:ListItem Text="-- Select a Course --" Value="" />
                        <asp:ListItem Text="Computer Science (CS)" Value="CS" />
                        <asp:ListItem Text="Information Technology (IT)" Value="IT" />
                        <asp:ListItem Text="Commerce (B.Com)" Value="BCom" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlCourse" InitialValue="" ErrorMessage="Please select a course." CssClass="text-danger" />
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-2 col-md-10">
                    <asp:Button runat="server" ID="btnSubmit" OnClick="btnSubmit_Click" Text="Submit Application" CssClass="btn btn-primary" />
                </div>
            </div>
        </div>
    </asp:Panel>
</asp:Content>