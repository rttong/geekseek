$(document).ready(function(){
  $('#sign_in_button').click( function(e) {
    e.preventDefault();
    console.log('wtf!');
        // e.preventDefault();
        // $('#popup_box').find('input').removeAttr('type');
    $('#sign_in_form').slideDown();
  });
});

