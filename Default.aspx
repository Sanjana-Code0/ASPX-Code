<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CollegeWebsite._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Hero Section -->
    <div class="jumbotron text-center" style="background: url('/Content/Images/college-campus.jpg') no-repeat center center; background-size: cover; color: white; text-shadow: 2px 2px 4px #000000;">
        <h1 class="display-4">Welcome to Our College</h1>
        <p class="lead">A place for innovation, learning, and growth. Discover your future with us.</p>
        <hr class="my-4" style="border-color: rgba(255,255,255,0.5);" />
        <p>Explore our wide range of courses and state-of-the-art facilities.</p>
        <a class="btn btn-primary btn-lg" href="~/Admission.aspx" role="button" runat="server">Apply Now</a>
    </div>

    <!-- Quick Info Section -->
    <div class="row text-center">
        <div class="col-md-4">
            <h2>Expert Faculty</h2>
            <p>Learn from experienced professors who are leaders in their fields and dedicated to student success.</p>
            <p><a class="btn btn-default" href="~/Departments/CS.aspx">Explore Departments »</a></p>
        </div>
        <div class="col-md-4">
            <h2>Vibrant Campus Life</h2>
            <p>Engage in a rich campus life with numerous clubs, sports, and cultural events happening year-round.</p>
            <p><a class="btn btn-default" href="#">Learn more »</a></p>
        </div>
        <div class="col-md-4">
            <h2>Career Opportunities</h2>
            <p>Our strong industry connections and dedicated placement cell help you launch a successful career.</p>
            <p><a class="btn btn-default" href="~/Contact.aspx">Contact Us »</a></p>
        </div>
    </div>

</asp:Content>