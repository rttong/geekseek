$(document).ready(function(){
  $('#search_form').on('ajax:success', function(event,data,xhr){
    $('.content').replaceWith($(data).find('.content'));
  });

  $(".fancybox").fancybox();
  // $("#sign_in_form").fancybox();
});

