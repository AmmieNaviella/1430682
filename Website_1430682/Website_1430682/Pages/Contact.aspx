<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Website_1430682.Pages.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Css/Masterpage.css" rel="stylesheet" type="text/css" media="screen" />
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="map">
        <img src="../Images/masterpageimage/map.PNG" />
    </div>

     <div id="location">
    <h2> Find us Here <img src="../images/icons/images.png" /></h2>

        <p> The Mall Gadong</p>
            <p>3rd Floor</p>
           <p> Brunei Darussalam
        </p>

        <!--contact page -->
        </div>

   

    <div id="call">

        <h2> Call Us or Message <img src="../images/icons/RcGG5M67i.png" /> </h2>
        <p>+6738759949</p>
        
    </div>

    <div id="Feedback">
        <h2> Your Message <img src="../images/icons/minicons-82-512.png" /> </h2>
        </div>

    <div id="table">  
            <table>
                <asp:Literal ID="message" runat="server"></asp:Literal>
               
                <tr>
                    <td>Name <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" Font-Italic="True" ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtname" runat="server" Width="300px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Email <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="email required" Font-Italic="True" ControlToValidate="txtemail" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtemail" runat="server" Width="300px" TextMode="Email"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Comments <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Address required" Font-Italic="True" ControlToValidate="txtmessage" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtmessage" runat="server" Width="300px" TextMode="MultiLine" Rows="5" Columns="120"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnsend" runat="server" Text="Send" OnClick="btnsend_Click1" />
                       

                    </td>
                        
                
                </tr>
                <tr>
                    <td>
                       
                        <input type="reset" value="Reset" /></td>
                        
                
                <%--</tr>--%>
                
            </table>
              
            </div>

     
     <div id="MAPscript">
       
         <script src="http://maps.googleapis.com/maps/api/js"></script>
            <script>
            function initialize() {
            var mapProp = {
                center: new google.maps.LatLng(4.885421, 114.931361),
                zoom: 20,
                mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
        }
        google.maps.event.addDomListener(window, 'load', initialize);
        </script>

      
                  
            </div>
   
      
   
   

</asp:Content>
