$(document).ready(function(){
  $('#profile_button').click(function(e) {
    e.preventDefault();
    $('.profile').slideDown();
  });

   $('#projects_button').click(function(e) {
    e.preventDefault();
    $('.projects').slideDown();
  });
 
});

