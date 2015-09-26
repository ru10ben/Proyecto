$(function(){
    flag=false;
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