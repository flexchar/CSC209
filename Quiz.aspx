<%@ Page Title="Quiz" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Quiz.aspx.cs" Inherits="D2.Quiz" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MasterPage" runat="server">
    <h2><%: Title %></h2>

    <div>
        <p>The chemical element with the highest density (in a single material) and hardness?</p>
        <asp:Label ID="Label1" runat="server" Text="Enter Answer"></asp:Label>
        <br />
        <asp:TextBox ID="answer" runat="server" Style="margin: 10px 0"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="answer" ForeColor="Red">Please type the answer</asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        <br />
        <br />
        <asp:Label ID="result" runat="server" Text="Result"></asp:Label>
    </div>
</asp:Content>
