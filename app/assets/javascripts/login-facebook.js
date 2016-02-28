$(document).ready(function(){
    $( "button.facebookAuth" ).on( "click", function( event ) {
        var ref = new Firebase("http://happenin-club.firebaseio.com");
        ref.authWithOAuthPopup("facebook", function(error, authData) {
          if (error) {
            console.log("Login Failed!", error);
          } else {
            console.log("Authenticated successfully with payload:", authData);
          }
          // remember: "sessionOnly",
          // scope: "email"
        });
    });
});

