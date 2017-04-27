<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Website_1430682.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Css/Masterpage.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="header">
        <h2> My Account</h2>
    </div>
    <asp:Literal ID="Literal2" runat="server"></asp:Literal>
    <br />
    <div id="Login">
        <header>Login</header>
        Email Address :<asp:TextBox ID="loginuser" runat="server"></asp:TextBox>
        <br />
        Password :
        <asp:TextBox ID="loginpassword" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" />

        <br />
        <asp:Literal ID="LiteralError" runat="server"></asp:Literal>

    </div>

    </asp:Content>