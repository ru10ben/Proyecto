$(function(){

	$('#saveandclose').click(function(){
		var newuser={firstname: $('#firstname').val(), lastname: $('#lastname').val(), username: $('#username').val(), email: $('#email').val(), password:    $('#password').val()};
    
  		$.post( "/newUser", newUser, function( data ) {
  			if(data=='ERROR'){
  				console.log('ERROR');
 				$('#error3').show();
  			}else{
 			    console.log('Logueado correctamente');
                //$.cookie('username',data.username);
                //$.cookie('roles',data.roles);
                window.location='/users';
  			}
  		});   
  })
    
    $('#logout').click(function(){
        
        window.location='/';
        
    })
});