


$(document).ready(function(){
    $( "#new_happenin" ).on( "click", function( event ) {
      event.preventDefault();
      console.log($(this));
      var data = $(this).serialize()
      console.log(data);
        var myFirebaseRef = new Firebase("https://happenin-club.firebaseio.com/happenin");

        myFirebaseRef.child("happenin").push("happenin", {business_id => params[:happening]})


    });
});