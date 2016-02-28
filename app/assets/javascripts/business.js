// $(document).ready(function(){
//   $('.leftContent').bind('DOMSubtreeModified', function(e) {
//     $('.busSubmittButton').on('click', function(e){
//       console.log("cat")
//       e.preventDefault();
//       $.ajax({
//         type: 'get',
//         url: '/businesses/show',
//         success: function(data){
//          console.log(data)
//         },
//         error: function(xhr, options, error){
//           console.log(xhr.status);
//           console.log(error);
//         }
//       })
//     })
//   });
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

})
