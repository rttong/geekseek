$(document).ready(function(){

  $('.dash_menu').accordion();

  var menu_head = $('.dash_menu > li > a'),
      menu_body = $('.dash_menu li > .submenu');

  menu_head.first().addClass('active').next().slideDown('normal');
  menu_head.on('click',function(event){
    event.preventDefault();

    if ($(this).attr('class') != 'active'){
      menu_body.slideUp('normal');
      $(this).next().stop(true,true).slideDown('normal');
      menu_head.removeClass('active');
      $(this).addClass('active');
    }
  });

  $('.menu_link').on('ajax:success', function(event,data,xhr){
    $('.dash_content').html(data);
  });

  $('#profile_button').on('ajax:success', function(event,data,xhr){
    event.preventDefault();
    $('.dash_content').html(data);
  });

   $('#update_profile_button').on('ajax:success', function(event,data,xhr){
    event.preventDefault();
    $('.dash_content').html(data);
  });
   
});

