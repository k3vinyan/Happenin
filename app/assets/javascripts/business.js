
$(document).ready(function(){
    // $('.leftContent').bind('DOMSubtreeModified', function(e) {
    //   $('.createDealsButton').on('click', function(e){
    //     e.preventDefault();
    //     $.ajax({
    //     type: 'post',
    //     data : {
    //       partion : 'create' // will be accessible in $_POST['data1']
    //     },
    //     dataType: 'json',
    //     url: '/businesses/show',
    //     success: function(data){
    //      console.log(data)
    //     },
    //     error: function(xhr, options, error){
    //       console.log(xhr.status);
    //       console.log(error);
    //     }
    //   })
    // }

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
