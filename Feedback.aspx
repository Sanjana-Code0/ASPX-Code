<%@ Page Title="Feedback" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="CollegeWebsite.Feedback" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Submit Feedback</h2>
    <p>We value your opinion. Please let us know how we can improve.</p>
    <hr />

    <asp:Panel ID="SuccessPanel" runat="server" Visible="false" CssClass="alert alert-success">
        <strong>Thank you!</strong> Your feedback has been received.
    </asp:Panel>

    <asp:Panel ID="FormPanel" runat="server">
        <div class="form-horizontal">
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="txtName" CssClass="col-md-2 control-label">Your Name (Optional)</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="txtName" CssClass="form-control" />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="txtEmail" CssClass="col-md-2 control-label">Your Email</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" TextMode="Email" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." CssClass="text-danger" />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="ddlFeedbackType" CssClass="col-md-2 control-label">Feedback Type</asp:Label>
                <div class="col-md-10">
                    <asp:DropDownList ID="ddlFeedbackType" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Suggestion" />
                        <asp:ListItem Text="Complaint" />
                        <asp:ListItem Text="Praise" />
                    </asp:DropDownList>
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="txtMessage" CssClass="col-md-2 control-label">Message</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="txtMessage" CssClass="form-control" TextMode="MultiLine" Rows="5" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtMessage" ErrorMessage="Message cannot be empty." CssClass="text-danger" />
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-2 col-md-10">
                    <asp:Button runat="server" ID="btnSubmit" OnClick="btnSubmit_Click" Text="Submit Feedback" CssClass="btn btn-primary" />
                </div>
            </div>
        </div>
    </asp:Panel>
</asp:Content>