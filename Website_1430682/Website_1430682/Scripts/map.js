
        var map;
function initialize() {

    var myLatlng = new google.maps.LatLng(4.8857309, 114.9316692);
    var mapOptions = {
        zoom: 4,
        center: myLatlng
    };

    var map = new google.maps.Map(document.getElementById("map"), mapOptions);

    var marker = new google.maps.Marker({
        position: myLatlng,
        title: "Hello World!"
    });
}

   