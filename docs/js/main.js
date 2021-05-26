
(function () {
	"use strict";

	var treeviewMenu = $('.app-menu');
	
	
	
		
    $('.app-menu__item').click(function(event){
		event.preventDefault();

		$('.app-menu__item').removeClass('active');
		
		if(!$(this).attr('data-toggle'))	
		{			
			$(this).addClass('active');
			if($("[data-toggle='treeview']").parent().hasClass('is-expanded'))
				$("[data-toggle='treeview']").parent().removeClass('is-expanded');
		}
    });
	
	// $('.treeview').click(function(event){
		// event.preventDefault();
		// $('.treeview').removeClass('is-expanded');
		
        // $(this).toggleClass('is-expanded');
		
    // });
	// Toggle Sidebar
	$('[data-toggle="sidebar"]').click(function(event) {
		event.preventDefault();
		$('.app').toggleClass('sidenav-toggled');
	});

	// Activate sidebar treeview toggle
	$("[data-toggle='treeview']").click(function(event) {
		event.preventDefault();
		if(!$(this).parent().hasClass('is-expanded')) {
			treeviewMenu.find("[data-toggle='treeview']").parent().removeClass('is-expanded');
		}
		$(this).parent().toggleClass('is-expanded');
	});

	// Set initial active toggle
	$("[data-toggle='treeview.'].is-expanded").parent().toggleClass('is-expanded');

	//Activate bootstrip tooltips
	$("[data-toggle='tooltip']").tooltip();

})();
