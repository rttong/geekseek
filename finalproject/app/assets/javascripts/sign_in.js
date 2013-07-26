$(document).ready(function(){
  //USERS
  $('#sign_in_button').click( function(e) {
    e.preventDefault();
    $('#sign_in_form').slideDown();
  });
  $('#sign_up_button').click( function(e) {
    e.preventDefault();
    $('#sign_up_form').slideDown();
  });

  //ORGANIZATIONS
  $('#sign_in_button_org').click( function(e) {
    e.preventDefault();
    $('#sign_in_form_org').slideDown();
  });
  $('#sign_up_button_org').click( function(e) {
    e.preventDefault();
    $('#sign_up_form_org').slideDown();
  }); 
});

