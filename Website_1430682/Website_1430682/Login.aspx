<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Website_1430682.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Literal ID="litStatus" runat="server"></asp:Literal>
                <br />
                <br />
                Username:<br />
                <asp:TextBox ID="txtUserName" runat="server" CssClass="inputs"></asp:TextBox>
                <br />
                <br />
                Password:<br />
                <asp:TextBox ID="txtPassword" runat="server" CssClass="inputs" TextMode="Password"></asp:TextBox>
                <br />
                <asp:Button ID="btnUser" runat="server" CssClass="btn btn-lg btn-success btn-block" OnClick="btnUser_Click" Text="User Login" />
                <asp:Button ID="btnAdmin" runat="server" CssClass="btn btn-lg btn-success btn-block" OnClick="btnAdmin_Click" Text="Admin Login" /> 
</asp:Content>
