<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Website_1430682.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div id ="Register">
        <header>Register Now</header>
        <p>
        Username :
        <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
    </p>
    <p>
        FirstName :
        <asp:TextBox ID="txtfirstname" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp; LastName :
        <asp:TextBox ID="txtlastname" runat="server"></asp:TextBox>
    </p>
        <p>Choose image:
            <asp:FileUpload ID="FileUpload1" runat="server"/>
        </p>
    <p>
        Email :
        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
    </p>
    <p>
        Password :
        <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
    </p>
    <p>
        Confirm Password :
        <asp:TextBox ID="txtconfirm" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="regbtn" runat="server" OnClick="regbtn_Click" Text="Register" />
    </p>
    <p>
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </p>

    </div>
    </asp:Content>

