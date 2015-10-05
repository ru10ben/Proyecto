$(function(){

	$('#log').click(function(){
		var login={username: $('#username').val(), password: $('#password').val()};
    var user;
  		$.post( "/login", login, function( data ) {
  			if(data=='ERROR'){
  				console.log('ERROR');
 				$('#error2').show();
  			}else{
 				 console.log('Logueado correctamente');
         $.cookie('username',data.username);
         $.cookie('roles',data.roles);
         window.location='/mainMenu';
  			}
  		});   
  })
});