$(document).ready(function(){
  //USERS
  $('#sign_in_button').click(function(e) {
    e.preventDefault();
    $('#sign_in_form').slideDown();
  });

  // Taking this out since sign up is two forms now.

  // $('#sign_up_button').click( function(e) {
  //   e.preventDefault();
  //   $('#sign_up_form').slideDown();
  // });
  // $('#sign_up_button_org').click( function(e) {
  //   e.preventDefault();
  //   $('#sign_up_form_org').slideDown();
  // }); 
});

