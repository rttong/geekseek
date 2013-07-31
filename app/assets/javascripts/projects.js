$(document).ready(function(){
  $('#search_form').on('ajax:success', function(event,data,xhr){
    $('#content_right').replaceWith($(data).find('#content_right'));
  });

  $(".fancybox").fancybox();
});
