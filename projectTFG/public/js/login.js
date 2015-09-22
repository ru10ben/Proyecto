$(function(){
	$('#log').click(function(){
		var login={username: $('#username').val(), password: $('#password').val()};
  		$.post( "/log", login, function( data ) {
  			if(data=='OK'){
  				console.log('Logueado correctamente');
  				$('#wrapper').load('prueba.html');
  			}else{
  				console.log('ERROR');
  				$('.error').text("User name or password incorrect");
 				//$('.error').show();	
  			}
  		});
    })

});