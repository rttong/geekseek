$(document).ready(function(){
  $('.sign_in_button').click(function(e) {
    e.preventDefault();
    $('#sign_in_form').fadeIn();
  });

  $('.sign_in_close').click(function(e) {
    e.preventDefault();
    $('#sign_in_form').fadeOut();
  });

});

