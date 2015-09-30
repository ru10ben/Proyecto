$(function(){
    var username=$.cookie('username');
    var role=$.cookie('roles');
    $('#username').text('User name: '+username);
    $('#role').text('Role: '+role);

    if(role.indexOf('Evaluator')>-1){
       $('#actions3').show(); 
    }
    if(role.indexOf('Administrator')>-1){
       $('#actions').show(); 
    }
    if(role.indexOf('Project Manager')>-1){
       $('#actions2').show(); 
    }

    $('#admin').click(function(){
        $('#admin').text('Hide Administrator actions');
        if(role == "Administrator"){
            console.log('algo');
            $('#admin').click(function(){
                location.reload();
                $('#admin').text('Show Administrator actions');
            })
        }  
  })
    
});