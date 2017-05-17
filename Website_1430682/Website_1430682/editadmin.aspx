<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="editadmin.aspx.cs" Inherits="Website_1430682.editadmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="edit">
          <h1>Products</h1>
        <div id="dashboard">
            <fieldset>
                <legend>Menu</legend>
                <ul>
                    <li><a href="addproduct.aspx">Add Product</a></li>
                    <li>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" />
                    </li>
                </ul>
            </fieldset>
        </div>
        <div id="register" runat="server">
            <table>
           
            <tr>
                <td>*Name</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtpname" runat="server"></asp:TextBox>
                </td>
                <td>
                    *Category</td>
                <td>
                    <asp:DropDownList ID="ddcat" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name_Cat" DataValueField="ID_Game">
                        <asp:ListItem>Baby clothing</asp:ListItem>
                        <asp:ListItem>Car Seats</asp:ListItem>
                        <asp:ListItem>Strollers</asp:ListItem>
                        <asp:ListItem>Feeding</asp:ListItem>
                        <asp:ListItem>Baby Care</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=SQL2016.FSE.Network;Initial Catalog=db_1430692_etagame;User ID=user_db_1430692_etagame;Password=Amber2015" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [tblGameCategory]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>*Price</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
                </td>
                <td>
                    *Quantity</td>
                <td>
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
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>*Description1</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtd1" runat="server"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
              
                <td>
                    *Product Image</td>
                <td>
                    <asp:FileUpload ID="pimage" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click"  />
                    </td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" />
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    &nbsp;</td>
            </tr>
        </table>
        </div>
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID_game" DataSourceID="SqlDataSource2" GridLines="Vertical" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" Width="581px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="ID_game" HeaderText="ID_game" ReadOnly="True" SortExpression="ID_game" />
                    <asp:BoundField DataField="name_game" HeaderText="name_game" SortExpression="name_game" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="game_cat" HeaderText="game_cat" SortExpression="game_cat" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                   
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>

          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=SQL2016.FSE.Network;Initial Catalog=db_1430692_etagame;User ID=user_db_1430692_etagame;Password=Amber2015" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [tblProductGame]"></asp:SqlDataSource>

         <asp:Button ID="btnEdit" runat="server" Text="Edit" OnClick="btnEdit_Click" />
            <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
         </div>
</asp:Content>
