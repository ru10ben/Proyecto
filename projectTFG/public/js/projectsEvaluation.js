$(function(){
    var i=0;
    var checkboxValues;
    var username=$.cookie('username');

    console.log(username);
    
    $.post( "/allProjects", username, function( data ) { //post donde te envio el username y luego miraremos donde borrar las cookies
        if(data!="ERROR"){
            while(i<data.length){
                tabla(data[i].name, data[i].description, data[i].idUser, data[i].id); //Los nombres pueden variar estos son de mis pruebas con la tabla project
                i++;
            }            
        }
        $("input[name=projName]").click(function () { 
            checkboxValues= $("input[name='projName']:checked").val();
        });
    });  
      
    $("#next2").click(function () { 
        $.post("/allProjects2",checkboxValues);
    });

});    
var tabla=function(column,column2,column3,columnId){

        var clon=$("#listProject").clone();
        clon.removeAttr('style');
        clon.find("input[name=projName]").attr("value",columnId); //tanto el valor como el id van a tomar el valor del id que necesitemos
        clon.find("input[name=projName]").attr("id",columnId);
        clon.find('#pru1').text(column);
        clon.find('#pru2').text(column2);
        clon.find('#pru3').text(column3+'%');
        $("#listProject").after(clon);    
}