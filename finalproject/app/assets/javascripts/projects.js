$(document).ready(function(){
  $('#search_form').on('ajax:success', function(event,data,xhr){
    alert('hi!');
    $('.content').replaceWith($(data).find('.content'));
  });
});