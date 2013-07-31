$(document).ready(function(){

  $('#accept_volunteer').on('ajax:success', function(event,data,xhr){

    alert("WORK~~~~~~!!!!!!")
    $('#content_right').replaceWith($(data).find('#content_right'));
  });
});
