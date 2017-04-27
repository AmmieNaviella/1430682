<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeFile="administrator.aspx.cs" Inherits="Website_1430682.administrator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Css/Masterpage.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2> <asp:Literal ID="litmessage" runat="server"></asp:Literal></h2>
    <div>
        <div id="addgame" runat="server">
            <table>
           
            <tr>
                <td>* Game Title</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txttitle" runat="server"></asp:TextBox>
                </td>
                <td>
                    *Game Category</td>
                <td>
                    <asp:DropDownList ID="ddcat" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name_Cat" DataValueField="ID_Game">
                        <asp:ListItem>Baby clothing</asp:ListItem>
                        <asp:ListItem>Car Seats</asp:ListItem>
                        <asp:ListItem>Strollers</asp:ListItem>
                        <asp:ListItem>Feeding</asp:ListItem>
                        <asp:ListItem>Baby Care</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1430692_etagameConnectionString %>" SelectCommand="SELECT * FROM [tblGameCategory]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">*Price</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    *Quantity</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtqty" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
          
            <tr>
                <td>*Description</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtdescription" runat="server"></asp:TextBox>
                </td>
                <td>
                    *Game Image</td>
                <td>
                    <asp:FileUpload ID="pimage" runat="server" />
                </td>
            </tr>
           
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="btnsave" runat="server" Text="Save" OnClick="btnsave_Click" />
                    </td>
                <td>
                   <input id="Reset1" type="reset" value="reset" />
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    &nbsp;</td>
            </tr>
        </table>
        </div>
        </div>
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
        <Columns>
           <asp:BoundField DataField="ID_game" HeaderText="ID_game" SortExpression="ID_game" />
            <asp:BoundField DataField="name_game" HeaderText="name_game" SortExpression="name_game" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="game_cat" HeaderText="game_cat" SortExpression="game_cat" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
             <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        </Columns>
         </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_1430692_etagameConnectionString %>" SelectCommand="SELECT * FROM [tblProductGame]"></asp:SqlDataSource>
</asp:Content>
