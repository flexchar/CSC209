<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="D2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MasterPage" runat="server">

    <div class="jumbotron">
        <h1>Hey there!</h1>
        <p class="lead">This is an assignment number two and <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://csc209.netlify.app/" Target="_blank">here is #1</asp:HyperLink>
        </p>
        <br />
        <asp:Image ID="Image1" runat="server" ImageUrl="https://csc209.netlify.app/school.003c5c62.svg" AlternateText="chemistry tools" ImageAlign="Middle" Width="100%" />
    </div>

</asp:Content>
