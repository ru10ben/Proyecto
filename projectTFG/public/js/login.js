
$(function(){
    var timeValidate;
  $('#log').attr('disabled', 'disabled'); //desactiva el boton
    $('#password').on('keyup', function(){
      clearTimeout(timeValidate);
      timeValidate=setTimeout(function(){
        var login={username: $('#username').val(), password: $('#password').val()};
        if($('#username').val()!=""){
          $.post( "/login", login, function( data ) { //microllamada para saber si el usuario existe
  			    if(data=='ERROR'){
                $('#log').attr('disabled', 'disabled');
                $('#labelname').css({'color':'#f04124'});
                $('#username').css({'border-color':'#f04124'});
 			          $('#error2').show();
                //console.log(data);
  			    }else{
                $('#log').attr('disabled', false);
                $.cookie('username',data.username);
                $.cookie('roles',data.roles);
                //console.log(data.id);
                $('#error2').hide();
                $('#labelname').css({'color': ""});
                $('#username').css({'border-color': ""});
  			    }
  		    });
        }
      },1000);//1 segundo
    });
});
