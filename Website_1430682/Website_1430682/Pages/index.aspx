<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Website_1430682.Pages.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="Css/Masterpage.css" rel="stylesheet" type="text/css" media="screen" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <div id="label1">
      <p> Lastest Game </p>

      </div>
 <div id="table">
      <table>
<tr>
    <td>
        <img src="../PS4/619dc8fa24eee2e1aff7f712375183b5.jpg" />
        <p> Discover a new world at the through an adventure-filled campaign </p>

        <p> $50.00</p>

        <asp:Button runat="server" Text="Add to Cart" cssclass="cartbtn" />
    </td>

     <td>
         <img src="../PS4/7ea437cb2c6a49cb356ba9514a4c7da6.jpg" />
         <p> Horizon Zero Dawn is an exhilarating new action role playing game exlusively for PS4 system</p>
         
         <p> $55.00</p>
         
          <asp:Button runat="server" Text="Add to Cart"  cssclass="cartbtn" />                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    </td>

     <td>
         <img src="../PS4/819zbgRMNQL._SL1500_.jpg" />
         <p>Killzone Shadow fall is a first-person shooter in a science fiction setting.Staple weapons such as the M82 Assault Rifle.</p>

         <p> $60.00</p>

         <asp:Button runat="server" Text="Add to Cart"  cssclass="cartbtn" />
    </td>

     <td>
         <img src="../PS4/acu1.jpg" />
         <p>Introducing Assassin’s Creed® Unity, the next-gen evolution of the blockbuster franchise powered by an all-new game engine.</p>

         <p>$50.00</p>

          <asp:Button runat="server" Text="Add to Cart"  cssclass="cartbtn" />
    </td>

</tr>
</table>
      </div>

</asp:Content>
