
$(function(){
    $('#password').on('focusout', function(){
        var login={username: $('#username').val(), password: $('#password').val()};
        if($('#username').val()!=""){
            
        $.post( "/login", login, function( data ) {
  			if(data=='ERROR'){
  				console.log('ERROR');
                $('#labelname').css({'color':'#f04124'});
                $('#username').css({'border-color':'#f04124'});
 				        $('#error2').show();
  			}else{
                $.cookie('username',data.username);
                $.cookie('roles',data.roles);
                $('#error2').hide();
                $('#labelname').css({'color':'#00FF00'});
                $('#username').css({'border-color':'#00FF00'});
  			}
  		});
        }
    });
});