$(function(){
	$('#log').click(function(){
		var login={name: $('#name').val(), password: $('#password').val()};
  		$.post( "/log", login, function( data ) {
  			if(data=='OK'){
  				console.log('Logueado correctamente');
  				$('#wrapper').load('prueba.html');
  			}else{
  				console.log('ERROR');
 				$('error').attr('value','Error login');		
  			}
  		});
    })

});