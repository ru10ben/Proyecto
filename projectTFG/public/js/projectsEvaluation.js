$(function(){
    var i=0;
    var checkboxValues;
    var username=$.cookie('username');

    console.log(username);
    var datos={username: username};

    $.post( "/allProjects", datos, function( data ) { //post donde te envio el username y luego miraremos donde borrar las cookies
        console.log(data[0].name);
        if(data!="ERROR"){
            while(i<data.length){
                tabla(data[i].name, data[i].description, 0,data[i].id); //data[i].idUser //Los nombres pueden variar estos son de mis pruebas con la tabla project
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