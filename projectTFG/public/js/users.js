$(function(){
    var i=0;

    $.get( "/allUsers", function( data ) {
        if(data!="ERROR"){
            while(i<data.length){
                console.log(data[i].firstName);
                tabla(data[i].userName, data[i].lastName, data[i].firstName);
                i++;
            }
        }
    });
});

var tabla=function(column,column2,column3){

        var clon=$("#listuser").clone();
        clon.removeAttr('style');
        clon.find('#prueba1').text(column);
        clon.find('#prueba2').text(column2+', '+column3);
        //clon.find('#prueba3').text(column3);
        $("#listuser").after(clon);    
}