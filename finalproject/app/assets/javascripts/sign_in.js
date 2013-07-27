$(document).ready(function(){
  //USERS
  $('#sign_in_button').click(function(e) {
    e.preventDefault();
    $('#sign_in_form').slideDown();
    // how the fuck do I turn this off? 
  });

  $('#signup_v').click( function(e) {
    e.preventDefault();
    $('#signup_form_v').toggle();
  });


  $('#signup_org').click( function(e) {
    e.preventDefault();
    $('#signup_form_org').toggle();
  });
   
});

