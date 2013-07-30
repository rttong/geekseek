$(window).load(function(){
    // Banner Slider Start
    new fwslider().init({
    	duration: "1000", /* Fade Speed (miliseconds) */
    	pause:    "6000"  /* Autoslide pause between slides (miliseconds)*/
    });
    // Banner Slider End
    
    // Dropdown Menu Start
    $(".nav-trigger").click(function(){
    	$("nav.main").slideToggle();
    });
    
    if ($(window).width() > 768) {

    	$("nav.main ul li").hover(function(){
    		$(this).children("ul").slideToggle("fast");
    	});
    }
    $("nav.main li:last-child").addClass("last");
    // Dropdown Menu End
});