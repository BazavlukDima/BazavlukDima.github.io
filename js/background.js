JQuery(document).ready(function() {

	/* particlesJS.load(@dom-id, @path-json, @callback (optional)); */
	particlesJS.load('particles-js', 'assets/particles/config.json', function() {
	  console.log('callback - config.js config loaded');
	});

})