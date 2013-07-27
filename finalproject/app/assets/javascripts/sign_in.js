$(document).ready(function(){
  //USERS
  $('#sign_in_button').click(function(e) {
    e.preventDefault();
    $('#sign_in_form').toggle();
  });

  $('#signup_v').click( function(e) {
    e.preventDefault();
    $('#signup_v').slideDown();
  });
   
});

