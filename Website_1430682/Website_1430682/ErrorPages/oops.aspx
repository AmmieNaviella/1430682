<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="oops.aspx.cs" Inherits="Website_1430682.ErrorPages.oops" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2> Error Has Occurred</h2>

    <p>Unexpected error happen in our website</p>
    <ul>
        <li>
            <asp:hyperlink ID="Homepage" runat="server" NavigateUrl="../Pages/index.aspx">HyperLink</asp:hyperlink>
        </li>

        <li>
            <asp:hyperlink ID="Contact" runat="server" NavigateUrl="../Pages/Contact.aspx">HyperLink</asp:hyperlink>
        </li>
        
    </ul>
</asp:Content>
