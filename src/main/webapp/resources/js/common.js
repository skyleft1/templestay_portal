
$(document).ready(function(){
	
	$(document).on('mouseenter', '.warp_menu_inner', function(e){
		$('.wrap_inner').slideDown(200);
	})
	$(document).on('mouseleave', '.warp_menu_inner', function(e){
		$('.wrap_inner').slideUp(200);
	});
	

	$(document).on('mouseenter', '.menu_content li h3, .menu_content_inner li h5', function(e){
		$(this).css('color', '#378c42 !important');
	});
	$(document).on('mouseleave', '.menu_content li h3, .menu_content_inner li h5', function(e){
		$(this).css('color', '');
	});


	$(function(){
		$.datepicker.setDefaults($.datepicker.regional['ko']); 
		$( ".calander" ).datepicker({
			dateFormat: 'yy-mm-dd'
			, minDate: 0
		    , maxDate: 150
		});
	});
});

