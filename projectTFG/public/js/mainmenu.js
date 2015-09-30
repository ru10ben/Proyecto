$(function(){
    var username=$.cookie('username');
    var role=$.cookie('roles');
    $('#username').text('User name: '+username);
    $('#role').text('Role: '+role);
    $('#admin').click(function(){
        $('#admin').text('Hide Administrator actions');
        flag=true;
        if(flag == true){
            console.log('algo')
            $('#admin').click(function(){
                $('#admin').text('Show Administrator actions');
            })
        }  
  })
    
	$('#h5name').text(name);

});