$(function(){
    var i=0;
    var checkboxValues;
    
    $.get( "/allProjects", function( data ) {
        if(data!="ERROR"){
            while(i<data.length){
                tabla(data[i].name, data[i].id,"aaaaaaaa"); //CAMBIAR
                i++;
            }            
        }
        $("input[name=projName]").click(function () { 
            //checkboxValues = new Array();
            //$("input[name='projName']:checked").each(function() {
            //    checkboxValues.push($(this).val());
            //});
            //$.post("/allProjects2",checkboxValues.toString());
            checkboxValues= $("input[name='projName']:checked").val();
            console.log(checkboxValues);
        });
    });  
      
    $("#next2").click(function () { 
        //console.log(checkboxValues.val()); //Tiene valor!!!
        $.post("/allProjects2",checkboxValues);
    });

});    
var tabla=function(column,column2,column3){

        var clon=$("#listProject").clone();
        clon.removeAttr('style');
        clon.find("input[name=projName]").attr("value",column);
        clon.find("input[name=projName]").attr("id",column);
        clon.find('#pru1').text(column);
        clon.find('#pru2').text(column);
        clon.find('#pru3').text(column2+'%');
        $("#listProject").after(clon);    
}