$(function(){
	//$('#error2').hide();
	$('#log').click(function(){
		var login={username: $('#username').val(), password: $('#password').val()};
  		$.post( "/log", login, function( data ) {
  			if(data=='ERROR'){
  				console.log('ERROR');
 				$('#error2').show();
  			}else{
 				console.log('Logueado correctamente');
 				console.log('Valor de DATA: '+data.roles+', '+data.username);
 				var user={username: data.username, roles: data.roles};
				//$('#wrapper').load('prueba.html',{user[1]});

  			}
  		});
    })

});