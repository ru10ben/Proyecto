$(function(){
    var i=0;
    var checkboxValues;
    var arrayId=new Array();
    //$('#save2').attr('disabled', 'disabled'); //desactiva el boton

    $.get( "/allEvaluators", function( data ) {
        if(data!="ERROR"){
            while(i<data.length){
                if((data[i].roles).indexOf('Evaluator')>-1){
                    tabla(data[i].id,data[i].userName, data[i].numProject, data[i].hitRatio);
                }
                i++;
            }            
        }
        $("input[name=evaluator]").click(function () { 
            //$('#save2').attr('disabled', false); //desactiva el boton
            checkboxValues = new Array();
            $("input[name='evaluator']:checked").each(function() {
                checkboxValues.push($(this).attr("id"));
            });
        });
    }); 
      
    $("#secondModal").click(function () {
        var idProject=$.cookie('idProject');
        console.log(checkboxValues); 
        var data= {evaluator:checkboxValues.toString(),idProject:idProject};  
        $.post( "/assing", data); 
        //console.log(checkboxValues);
    });

});    
var tabla=function(columId,column,column2,column3){

        var clon=$("#listEvaluator").clone();
        clon.removeAttr('style');
        clon.find("input[name=evaluator]").attr("value",column);
        clon.find("input[name=evaluator]").attr("id",columId);
        clon.find('#prueba1').text(column);
        clon.find('#prueba2').text(column2);
        clon.find('#prueba3').text(column3+'%');
        $("#listEvaluator").after(clon);    
}