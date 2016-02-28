$(document).ready(function(){
  $('.leftContent').bind('DOMSubtreeModified', function(e) {
     $(".backButton").on('click', function(e){
      e.preventDefault();
      $.ajax({
        type: 'get',
        url: '/welcome/login',
        success: function(data){
         $(".leftContent").empty();
          $(".leftContent").removeClass('bottomDiv')
          $(".leftContent").html(data);
        },
        error: function(xhr, options, error){
          console.log(xhr.status);
          console.log(error);
        }
      })
    })
  })

    $('#edit-business-link').click(function(e) {
      e.preventDefault();
      var businessID = $('#business_id').val();
      $.ajax({
        method: 'GET',
        url: '/businesses/' + businessID + '/edit',
        async: true
      }).done(function(html) {
        $('#edit-pane').html(html);
      })
    });
})
