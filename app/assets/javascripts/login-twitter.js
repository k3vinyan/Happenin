
$(document).ready(function(){
    $( "button.twitterAuth" ).on( "click", function( event ) {
        var ref = new Firebase("http://happenin-club.firebaseio.com");
        ref.authWithOAuthPopup("twitter", function(error, authData) {
          if (error) {
            console.log("Login Failed!", error);
          } else {
            console.log("Authenticated successfully with payload:", authData);
          }
        });
    });
});