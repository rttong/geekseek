$(document).ready(function(){

  $(".fancybox").fancybox();
  $("#sign_in_form").bind("ajax:error", function(evt, data, status, xhr){
    $(".sign_in_error").removeClass('hidden');
  });
  });

