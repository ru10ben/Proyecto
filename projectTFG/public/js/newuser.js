$(function(){

	$('#saveandclose').click(function(){
    var checkboxValues = new Array();
    $("input[name='role']:checked").each(function() {
      checkboxValues.push($(this).val());
    });

		var newuser={firstname: $('#firstname').val(), lastname: $('#lastname').val(), username: $('#username').val(), 
                    email: $('#email').val(), password: $('#password').val(),comments: $('#comments'), role: checkboxValues};
    console.log(checkboxValues);

  	$.post( "/insertUser", newuser, function( data ) {
  			if(data=='ERROR'){
  				console.log('ERROR');
 				  $('#error3').show();
  			}else{
 			    console.log('Logueado correctamente');
          //$.cookie('username',data.username);
          //$.cookie('roles',data.roles);
          //window.location.href='/';
  			}
  		});   
  })
});