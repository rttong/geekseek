$(document).ready(function(){
  $('#sign_in_button').click(function(e) {
    e.preventDefault();
    $('#sign_in_form').fadeIn();
  });

  $('#sign_in_close').click(function(e) {
    e.preventDefault();
    $('#sign_in_form').fadeOut();
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

