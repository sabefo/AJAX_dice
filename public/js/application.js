$(document).ready(function() {

	$("form").on("submit", function(event) {
	  event.preventDefault();
	  //ESTO ESTA SACANDO EL VALOR DE ACTION DE LA FOMRA
	  url = $("form").attr("action");
	  $.post(url, function(data){
	  	$("img").replaceWith(data);
	  });
	});
});
