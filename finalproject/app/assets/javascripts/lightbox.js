$(document).ready(function() {  
 
    //select all the a tag with name equal to modal
    $('a[name=lightbox]').click(function(e) {
        //Cancel the link behavior
        e.preventDefault();
        //Get the A tag
        var id = $(this).attr('href');
     
        //Get the screen height and width
        var lightboxHeight = $(document).height();
        var lightboxWidth = $(window).width();
     
        //Set height and width to lightbox to fill up the whole screen
        $('#lightbox').css({'width':lightboxWidth,'height':lightboxHeight});
         
        //transition effect     
        $('#lightbox').fadeIn(500);    
        $('#lightbox').fadeTo("slow",0.8);  
     
        //Get the window height and width
        var winH = $(window).height();
        var winW = $(window).width();
               
        //Set the popup window to center
        $(id).css('top',  winH/2-$(id).height()/2);
        $(id).css('left', winW/2-$(id).width()/2);
     
        //transition effect
        $(id).fadeIn(500); 
     
    });
     
    //if close button is clicked
    $('.window .close').click(function (e) {
        //Cancel the link behavior
        e.preventDefault();
        $('#lightbox, .window').hide();
    });     
     
    //if lightbox is clicked
    $('#lightbox').click(function () {
        $(this).hide();
        $('.window').hide();
    });         
     
});