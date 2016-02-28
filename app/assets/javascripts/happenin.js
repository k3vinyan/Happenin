$(document).ready(function(){
  $("#new_happenin").on("click", function( event ) {
    var title = $('#title_input').val()
    var description = $('#description_input').val()
    var startTime = $('#start_time_input').val()
    var endTime = $('#end_time_input').val()
    var businessID = $('#business-id').val()
    event.preventDefault();
    var myFirebaseRef = new Firebase("https://happenin-club.firebaseio.com/happenin");
    myFirebaseRef.child("happenin").child(businessID).push({title: title, description: description, startTime: startTime, endTime: endTime})
  });
});
