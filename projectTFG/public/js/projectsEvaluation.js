$(function(){
    var i=0;
    var checkboxId;
    var checkboxValue;
    var username=$.cookie('username');
    $("#next2").attr('disabled','disabled');
    
    var datos={username: username};

    $.post( "/allProjects", datos, function( data ) { //post donde te envio el username y luego miraremos donde borrar las cookies
        if(data!="ERROR"){
            while(i<data.length){
                tabla(data[i].name, data[i].description, 0,data[i].id); //data[i].idUser //Los nombres pueden variar estos son de mis pruebas con la tabla project
                i++;
            }            
        }
        $("input[name=projName]").click(function () { 
            checkboxId= $("input[name='projName']:checked").attr("id");
            checkboxValue= $("input[name='projName']:checked").val();
            $.cookie('idProject',checkboxId);
            $.cookie('nameProject',checkboxValue);
            $("#next2").attr('disabled', false);
        });
    });  
});    
var tabla=function(column,column2,column3,columnId){

        var clon=$("#listProject").clone();
        clon.removeAttr('style');
        clon.find("input[name=projName]").attr("value",column); //tanto el valor como el id van a tomar el valor del id que necesitemos
        clon.find("input[name=projName]").attr("id",columnId);
        clon.find('#pru1').text(column);
        clon.find('#pru2').text(column2);
        clon.find('#pru3').text(column3+'%');
        $("#listProject").after(clon);    
}