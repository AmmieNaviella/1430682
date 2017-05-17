<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="Website_1430682.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="content">
    <div class="block-2 pad-2">
     <h3 class="h3-line"></h3>

        <asp:Panel ID="pnlShoppingCart" runat="server"></asp:Panel> 
       
        <table>
            <tr>
                <td>
                    <b>Total: </b>
                </td>
                <td>
                    <asp:Literal ID="litTotal" runat="server" Text=""></asp:Literal>
                </td>
            </tr>

            <tr>
                <td>
                    <b>Total Amount: </b>
                </td>
                <td>
                    <asp:Literal ID="litTotalAmount" runat="server" Text="" />
                </td>
            </tr>

            <tr>
                <td>
                    <br />
                    <asp:LinkButton ID="ContShop" runat="server" PostBackUrl="~/Pages/Products.aspx" OnClick="ContShop_Click">Continue Shopping</asp:LinkButton><br />OR<br />                    
                    <asp:Button ID="btnCheckout" runat="server" Text="Check Out" CssClass="btn btn-lg btn-success btn-block" Width="250px" PostBackUrl="~/Pages/Success.aspx" OnClick="btnCheckout_Click" />

                </td>
            </tr>

        </table>

    </div>
    </section>
</asp:Content>
