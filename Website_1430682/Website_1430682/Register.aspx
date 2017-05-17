<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Website_1430682.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Literal runat="server" ID="litStatusMessage" />
          

            User name:<br />
            <asp:TextBox runat="server" ID="txtUserName" CssClass="inputs" /><br />

            Password:
            <br />
            <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" CssClass="inputs" /><br />

            Confirm password:
            <br />
            <asp:TextBox runat="server" ID="txtConfirmPassword" TextMode="Password" CssClass="inputs" /><br />

            Customer Name:<br />
            <asp:TextBox runat="server" ID="txtCustomerName" CssClass="inputs" /><br />

            E-Mail:<br />
            <asp:TextBox runat="server" ID="txtEmail" CssClass="inputs" /><br />

            Phone Number:<br />
            <asp:TextBox runat="server" ID="txtPhoneNumber" CssClass="inputs" /><br />

     <p>
        <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" CssClass="btn btn-lg btn-success btn-block" Width="150px" />
            </p> 
</asp:Content>
