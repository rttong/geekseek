$(document).ready(function(){

  $(".fancybox").fancybox();
  
  $("#sign_in_form").bind("ajax:error", function(evt, data, status, xhr){
    $(".sign_in_error").removeClass('hidden');
  });

  $("#sign_in_form").bind("ajax:success", function(evt, data, status, xhr){
     // $("#sign_in_form").removeAttr("data-remote");
     // $("#sign_in_form").removeData("remote");
      // $(".dash_content").html(response); 
  });
});

