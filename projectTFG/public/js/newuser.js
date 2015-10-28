$(function(){
    var checkboxValues = new Array();
    $('#saveandclose').attr('disabled', 'disabled'); //desactiva el boton
    $("input[name='role']:checked").each(function() {
            checkboxValues.push($(this).val());
    });
    
    $('#username').on('focusout', function(){
        var newuser={firstname: $('#firstname').val(), lastname: $('#lastname').val(), username: $('#username').val(), 
        email: $('#email').val(), password: $('#password').val(), comments: $('#comments').val(), 
        role: checkboxValues.toString()};
        console.log(newuser.role);
        if(newuser.username!=""){
  		  $.post( "/checkUser", newuser, function( data ) {
  			  if(data=='ERROR'){
  				 console.log('ERROR');
                $('#labelname').css({'color':'#f04124'});
                $('#username').css({'border-color':'#f04124'});
 			    $('#error3').show();
  			   }else{
                //$('#saveandclose').attr('disabled', false);
                $('#error3').hide();
                $('#labelname').css({'color':'#00FF00'});
                $('#username').css({'border-color':'#00FF00'});
  			   }
        });
  		  }   
      });
    $('#admin').on('keypress', function (event) { //Posible idea para solucionar el problema de los checkbox
        if($(this).prop("checked")){
            console.log("lelelelee")
            $('#saveandclose').attr('disabled', false);
         }
    });
    $('#promanager').on('keypress', function (event) { //Posible idea para solucionar el problema de los checkbox
        if($(this).prop("checked")){
            console.log("lelelelee")
            $('#saveandclose').attr('disabled', false);
         }
    });
    $('#eval').on('keypress', function (event) { //Posible idea para solucionar el problema de los checkbox
        if($(this).prop("checked")){
            console.log("lelelelee")
            $('#saveandclose').attr('disabled', false);
         }
    });
});