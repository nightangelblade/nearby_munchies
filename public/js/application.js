$(document).ready(function() {
  var map = new google.maps.Map(document.getElementById('map'), mapOptions);
});

var mapOptions = {
    center: new google.maps.LatLng(37.7831,-122.4039),
    zoom: 12,
    mapTypeId: google.maps.MapTypeId.ROADMAP
};




