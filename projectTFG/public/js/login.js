
$(function(){
    $('#password').on('focusout', function(){
        var login={username: $('#username').val(), password: $('#password').val()};
        if($('#username').val()!=""){
            
        $.post( "/login", login, function( data ) {
  			if(data=='ERROR'){
                $('#labelname').css({'color':'#f04124'});
                $('#username').css({'border-color':'#f04124'});
 				        $('#error2').show();
                $('#log').attr('disabled', 'disabled');
                console.log(data);
                //$('#log').prop('disabled', true);
  			}else{
                $('#log').attr('disabled', false);
                //$('#log').prop('disabled', false);
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