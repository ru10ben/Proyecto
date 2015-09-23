$(function(){
	//$('#error2').hide();
  var barrera=false;
	$('#log').click(function(){
		var login={username: $('#username').val(), password: $('#password').val()};
    var user;
  		$.post( "/log", login, function( data ) {
  			if(data=='ERROR'){
  				console.log('ERROR');
 				$('#error2').show();
  			}else{
 				 console.log('Logueado correctamente');
         $('#log').attr('href','/mainMenu');
  			}
  		});   
  })
});