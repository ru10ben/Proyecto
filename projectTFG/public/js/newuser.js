$(function(){
    
       var checkboxValues = new Array();
        $("input[name='role']:checked").each(function() {
        checkboxValues.push($(this).val());
        });
    
       $('#username').on('focusout', function(){
/*        var newuser={firstname: $('#firstname').val(), lastname: $('#lastname').val(), username: $('#username').val(), 
        email: $('#email').val(), password: $('#password').val(), comments: $('#comments').val(), 
        role: checkboxValues.toString()};
        console.log(newuser.role);*/
        var username=$('#username').val();
        if($('#username').val()!=""){
            
  		$.post( "/checkUser", username, function( data ) {
  			if(data=='ERROR'){
  				console.log('ERROR');
                $('#labelname').css({'color':'#f04124'});
                $('#username').css({'border-color':'#f04124'});
 				$('#error3').show();
  			}else{
                $('#error3').hide();
                $('#labelname').css({'color':'#00FF00'});
                $('#username').css({'border-color':'#00FF00'});
  			}
        })
  		}   
        });
});