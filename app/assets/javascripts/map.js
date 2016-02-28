// Google maps and customer geolocation code
function initMap(){
  var mapDiv = document.getElementById('map');
  var map = new google.maps.Map(mapDiv, {
    zoom: 15
  });
  // Try HTML5 geolocation.
  var pos = {}
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      pos = {
        lat: position.coords.latitude,
        lng: position.coords.longitude
      };
      customerMarker.setPosition(pos);
      // customerMarker.setContent('Location found.');
      map.setCenter(pos);
    }, function() {
      handleLocationError(true, infoWindow, map.getCenter());
    });
  } else {
    // Browser doesn't support Geolocation
    handleLocationError(false, infoWindow, map.getCenter());
  }

  var customerMarker = new google.maps.Marker({map: map});
}

function handleLocationError(browserHasGeolocation, infoWindow, pos) {
  infoWindow.setPosition(pos);
  infoWindow.setContent(browserHasGeolocation ?
    'Error: The Geolocation service failed.' :
    'Error: Your browser doesn\'t support geolocation.');
}

// GeoFire code

//create Firebase instance
var ref = new Firebase("https://happenin-club.firebaseio.com/happenin");
//create geofire instance
var geoFire = new GeoFire(ref.child("_geofire"));
// Keep track of all of the vehicles currently within the query
var happeningsInQuery = {};
// Create a new GeoQuery instance
var geoQuery = geoFire.query({
  center: center,
  radius: radiusInKm
});








