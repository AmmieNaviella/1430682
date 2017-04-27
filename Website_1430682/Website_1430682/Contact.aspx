<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Website_1430682.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Css/Masterpage.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
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

     
    

         <script src='https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyDzcTEcD0yS_UeIEGi6IE_RFvoIQvLGY30'></script><div style='overflow:hidden;height:400px;width:520px;'><div id='gmap_canvas' style='height:400px;width:520px;'></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style></div> <a href='https://add-map.org/'>how to add a google map to a website</a> <script type='text/javascript' src='https://embedmaps.com/google-maps-authorization/script.js?id=3ea44110347ff48fca96f74ae726ad9db03f01bb'></script><script type='text/javascript'>function init_map(){var myOptions = {zoom:17,center:new google.maps.LatLng(4.9055786,114.91670120000003),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(4.9055786,114.91670120000003)});infowindow = new google.maps.InfoWindow({content:'<strong>ETA GAME</strong><br>The Mall Gadong. Brunei Darussalam<br> Bandar Seri Begawan<br>'});google.maps.event.addListener(marker, 'click', function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>
                  
            </div>
</asp:Content>
