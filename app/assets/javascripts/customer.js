$(document).ready(function() {
  $('#edit-customer-link').click(function(e) {
    e.preventDefault();
    var customerID = $('#customer_id').val();
    $.ajax({
      method: 'GET',
      url: '/customers/' + customerID + '/edit',
      async: true
    }).done(function(html) {
      $('#edit-pane').html(html);
    })
  });
})
