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
})


