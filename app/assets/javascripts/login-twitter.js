$(document).ready(function(){
    $( "button.twitterAuth" ).on( "click", function( event ) {
        var ref = new Firebase("http://happenin-club.firebaseio.com");
        ref.authWithOAuthPopup("twitter", function(error, authData) {
          if (error) {
            console.log("Login Failed!", error);
          } else {
            console.log("Authenticated successfully with payload:", authData);
            var data ={
              twitterDisplayName: authData.twitter.displayName,
              twitterUid: authData.uid,
              twitterProfile_image_url: authData.twitter.profileImageURL,
              twitterUsername: authData.twitter.username
              }
            var businessID = $('#business_id').val();
            $.ajax({
              method:"patch",
              url: '/businesses/'+ businessID,
              data: data
            }).done(function(){
              console.log("success")
            })
          }
        });
    });
});

