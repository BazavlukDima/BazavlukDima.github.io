
;(function () {
	
	'use strict';



	var isMobile = {
		Android: function() {
			return navigator.userAgent.match(/Android/i);
		},
			BlackBerry: function() {
			return navigator.userAgent.match(/BlackBerry/i);
		},
			iOS: function() {
			return navigator.userAgent.match(/iPhone|iPad|iPod/i);
		},
			Opera: function() {
			return navigator.userAgent.match(/Opera Mini/i);
		},
			Windows: function() {
			return navigator.userAgent.match(/IEMobile/i);
		},
			any: function() {
			return (isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Opera() || isMobile.Windows());
		}
	};

	var getHeight = function() {
		var extraHeight = 0;

		if ( isMobile.any() ) extraHeight = 50;
		
		setTimeout(function(){
			$('#main').stop().animate({
				'height': $('.tab-content.active').height() + extraHeight
			});
		}, 200);
	};


	var tabContainer = function() {
		getHeight();
		$(window).resize(function(){
			getHeight();
		})
	};

	var tabClickTrigger = function() {
		$('.tab-menu a').on('click', function(event) {
			event.preventDefault();
			var $this = $(this),
				data = $this.data('tab'),
				pie = $this.data('pie');

			// add/remove active class
			$('.tab-menu li').removeClass('active');
			$this.closest('li').addClass('active');

			$('.tab-content.active').addClass('animated fadeOutDown');

			setTimeout(function(){
				$('.tab-content.active').removeClass('active animated fadeOutDown fadeInUp');
				$('.tab-content[data-content="'+data+'"]').addClass('animated fadeInUp active');
				getHeight();
			}, 500);
			
		})
	};

	// Document on load.
	$(function(){
		tabContainer();
		tabClickTrigger();

	});


}());