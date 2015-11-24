$(function(){
    var i=0;
    var checkboxValues;
    
    $.get( "/allEvaluators", function( data ) {
        if(data!="ERROR"){
            while(i<data.length){
                if((data[i].roles).indexOf('Evaluator')>-1){
                    tabla(data[i].userName, data[i].numProject, data[i].hitRatio);
                }
                i++;
            }            
        }
        $("input[name=evaluator]").click(function () { 
            checkboxValues = new Array();
            $("input[name='evaluator']:checked").each(function() {
                checkboxValues.push($(this).val());
            });
        });
    });

    //var data= {evaluator:checkboxValues};  
    //$.post( "/assing", data);  
      
    $("#save").click(function () { 
        console.log(checkboxValues);
    });

});    
var tabla=function(column,column2,column3){

        var clon=$("#listEvaluator").clone();
        clon.removeAttr('style');
        clon.find("input[name=evaluator]").attr("value",column);
        clon.find("input[name=evaluator]").attr("id",column);
        clon.find('#prueba1').text(column);
        clon.find('#prueba2').text(column2);
        clon.find('#prueba3').text(column3+'%');
        $("#listEvaluator").after(clon);    
}