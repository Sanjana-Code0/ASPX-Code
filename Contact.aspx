<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CollegeWebsite.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <hr />
    <div class="row">
        <div class="col-md-6">
            <h3>Our Address</h3>
            <address>
                <strong>Our College</strong><br />
                123 University Drive<br />
                Learning City, State 12345<br />
                <abbr title="Phone">P:</abbr>
                (123) 456-7890
            </address>

            <address>
                <strong>Support Email:</strong>   <a href="mailto:Support@college.edu">Support@college.edu</a><br />
                <strong>Admissions Email:</strong> <a href="mailto:Admissions@college.edu">Admissions@college.edu</a>
            </address>
        </div>
        <div class="col-md-6">
             <h3>Send us a Message</h3>
             
             <asp:Panel ID="SuccessPanel" runat="server" Visible="false" CssClass="alert alert-success">
                <strong>Message Sent!</strong> Thank you for contacting us.
            </asp:Panel>

             <asp:Panel ID="FormPanel" runat="server">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtName">Your Name</asp:Label>
                    <asp:TextBox runat="server" ID="txtName" CssClass="form-control" />
                </div>
                 <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtEmail">Your Email</asp:Label>
                    <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" TextMode="Email"/>
                </div>
                 <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtSubject">Subject</asp:Label>
                    <asp:TextBox runat="server" ID="txtSubject" CssClass="form-control" />
                </div>
                 <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtMessage">Message</asp:Label>
                    <asp:TextBox runat="server" ID="txtMessage" CssClass="form-control" TextMode="MultiLine" Rows="4" />
                </div>
                <div class="form-group">
                    <asp:Button runat="server" ID="btnSendMessage" OnClick="btnSendMessage_Click" Text="Send Message" CssClass="btn btn-primary" />
                </div>
             </asp:Panel>
        </div>
    </div>
</asp:Content>