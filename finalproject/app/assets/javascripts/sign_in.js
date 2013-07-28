$(document).ready(function(){
  //USERS
  $('#sign_in_button').click(function(e) {
    e.preventDefault();
    $('#sign_in_form').slideDown();
    // how the fuck do I turn this off? 
  });

  $('#sign_in_close').click(function(e) {
    e.preventDefault();
    $('#sign_in_form').slideUp();
  });

  $('#signup_v').click( function(e) {
    e.preventDefault();
    $('#signup_form_v').fadeIn();
  });

  $('#signup_v_close').click(function(e) {
    e.preventDefault();
    $('#signup_form_v').fadeOut();
  });


  $('#signup_org').click( function(e) {
    e.preventDefault();
    $('#signup_form_org').fadeIn();
  });

  $('#signup_org_close').click(function(e) {
    e.preventDefault();
    $('#signup_form_org').fadeOut();
  });

});

