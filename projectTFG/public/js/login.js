$(function(){
	$('#log').click(function(){
		var login={name: $('#name').val(), password: $('#password').val()};
  		$.post( "/log", login, function( data ) {
  			if(data=='OK'){
  				console.log('Logueado correctamente');
  			}else{
  				console.log('ERROR');
  				
  			}
  		});
    })

});