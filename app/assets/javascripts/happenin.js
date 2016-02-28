// Write data to Firebase

$(document).ready(function(){
    $("#new_happenin").on("click", function( event ) {
      var title = $('#title_input').val()
      var description = $('#description_input').val()
      var startTime = $('#start_time_input').val()
      var endTime = $('#end_time_input').val()
      var businessID = $('#business-id').val()
      event.preventDefault();

        var myFirebaseRef = new Firebase("https://happenin-club.firebaseio.com");

        myFirebaseRef.child("happenin").child(businessID).push({title: title, description: description, startTime: startTime, endTime: endTime})
    });


});

// Retrieve data from Firebase


// var ref = new Firebase("https://happenin-club.firebaseio.com/happenin/1");

// ref.on('child_added',function(data){
//   console.log(data.val());
// })

// ref.on('child_added',function(data){
//   console.log(data.val());
// })