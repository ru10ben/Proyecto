$(function(){
    var idProject = $.cookie('idProject');
    var nameProject = $.cookie('nameProject');
    var i=0; //tamaño array
    var selected;
    var arrayId;
    var valor;
    var valor2;
    var valorId;
    var opt;
    var datos={idProject: idProject};
    var idSelect;
    var strText;
    var valSelect;
    var k=0;
    var ans;
    select = document.getElementById("selectClas");
    arrayId = new Array();
    
    $(".projectName").text(nameProject);
    
    $('#next2').attr('disabled', 'disabled'); 
    
    //PINTAMOS LOS RADIOS
    $("#pass").click(function () {
        $(".ans2").css("color", "");
        $(".ans3").css("color", "");
        $(".ans1").css("color", "mediumblue");
        if($(this).is(":checked")){
            $("#next2").attr("disabled", false);
         }
    });
    
    $("#fail").click(function () { 
        $(".ans1").css("color", "");
        $(".ans3").css("color", "");
        $(".ans2").css("color", "mediumblue");
        if($(this).is(":checked")){
            $("#next2").attr("disabled", false);
         }
    });
    
    $("#notApp").click(function () {
        $(".ans1").css("color", "");
        $(".ans2").css("color", "");        
        $(".ans3").css("color", "mediumblue");
        if($(this).is(":checked")){
            $("#next2").attr("disabled", false);
         }
    });
    
    $("#notes").click(function(){   
         $(".p1").toggle();
    });

    $("#compliance").click(function(){
         $(".p2").toggle();
    });
    
    
    $.post('/tablaEvaluation', datos, function(data) {
        $('#pru1').html(data.notApplicableRQ);
        $('#pru1').attr("Style", "text-align: center");
        $('#pru2').html(data.passRQ);
        $('#pru2').attr("Style", "text-align: center");
        $('#pru3').html(data.failRQ);
        $('#pru3').attr("Style", "text-align: center");
        $('#pru4').html(data.notEvaluatedRQ);
        $('#pru4').attr("Style", "text-align: center");
        $('#pru6').html(data.notApplicableSH);
        $('#pru6').attr("Style", "text-align: center");
        $('#pru7').html(data.passSH);
        $('#pru7').attr("Style", "text-align: center");
        $('#pru8').html(data.failSH);
        $('#pru8').attr("Style", "text-align: center");
        $('#pru9').html(data.notEvaluatedSH);
        $('#pru9').attr("Style", "text-align: center");
    });
    
    $.post('/clausesEvaluation', datos, function(data) { //--------------------------------------PRIMER POST
        
        while(i<data.length){
            opt = document.createElement("option");
            opt.id = data[i].id;
            opt.value= data[i].answer;
            arrayId=arrayId.concat(opt.id);
            
            paint(opt.value,opt); //funcion para pintar los options
            //check(opt.value);
            
            opt.innerHTML = data[i].id+' '+data[i].title;
            select.appendChild(opt);
            i++;
            
        } //END WHILE

        //insertamos el atributo size para mostrar todos los options
        $("select").attr("size", i);
        
        selected = document.getElementById(arrayId[0]); //esto es para sacar el primer requisito seleccionado
        selected.setAttribute("selected", "selected");
        
        if($("select option:selected")){
            idSelect = $("select option:selected").attr("id"); //aqui cojo el id
            strText = $("select option:selected").text();
            valSelect = $("select option:selected").val();
        }
        
            //k=arrayId.indexOf(idSelect); //SE PUEDE BORRAR
            //console.log("primer k: "+k);
        
            ans=valSelect;
            
        var datos={idClause: idSelect, idProject: idProject, answer: ans};
        
        $.post('/dataClause',datos,function(data){  //SEGUNDO POST
            $(".clausesName").text(data.clause);
            $("#table0").show();
            $("#t00").html(data.typeOfAssessment);
            $("#t01").html(data.preconditions);
            $("#t02").html(data.procedure);
            $("#t03").html(data.result);

            if(data.note.length <=1){
                $("#divNotes").attr("style","display:none");
            }
            
            $("#note").text(data.note.join("\n"));        
        }); //END SEGUNDO POST
        
        $(".clausesTitle").text(strText);
        
    }); //END PRIMER POST
    
//-------------------------------------------------------------------------------------------------------------------CHANGE
        $("select").on("change", function() {
            
            var strText1="";
            var strVal="";
            //var idSelect1;

            idSelect = $("select option:selected").attr("id");
            k=arrayId.indexOf(idSelect);

            console.log('k change: '+k);
            
            //ans = $("select option:selected").val();
            
            //var datos={idClause: idSelect, idProject: idProject, answer: ans};
            
            var datos={idClause: idSelect,idProject: idProject};
        $.post('/dataClause',datos,function(data){ // POST CHANGE
                
            $('#pru1').html(data.notApplicableRQ);
            $('#pru2').html(data.passRQ);
            $('#pru3').html(data.failRQ);
            $('#pru4').html(data.notEvaluatedRQ);
            $('#pru6').html(data.notApplicableSH);
            $('#pru7').html(data.passSH);
            $('#pru8').html(data.failSH);
            $('#pru9').html(data.notEvaluatedSH);
                
            $(".clausesName").text(data.clause);
    
                var j=0;
                var compliance='';
                while(j<data.typeOfAssessment.length){
                    $("#table"+j).show();
                    $("#t"+j+"0").html(data.typeOfAssessment[j]);
                    $("#t"+j+"1").html(data.preconditions[j]);
                    $("#t"+j+"2").html(data.procedure[j]);
                    $("#t"+j+"3").html(data.result[j]);
                    j++;
                }
                
                if(j==1) {
                    $("#table"+j).hide();
                }
                
                if(data.note.length <1){
                    $("#divNotes").attr("style","display:none");
                }
                else{
                    $("#divNotes").removeAttr("style");
                }
                $("#note").text(data.note.join("\n"));
                
            });// END POST CHANGE
            
            if($("select option:selected")){
                strText1 = $("select option:selected").text();
                //strVal = $("select option:selected").val();
            }
 
            $(".clausesTitle").text(strText1);
        });
    
//--------------------------------------------------------------------------------------CLICK NEXT
    $("#next2").click(function(){ 
        ans = $("input[name='ans']:checked").val(); //RECOGEMOS EL VALOR DEL RADIO
        
        //console.log('k NEXT1: '+k);
        
        //$("select option:selected").attr("selected",false);
        
        var w = i-1; //prueba
        if(k==w){

            //$('#next2').attr('disabled', 'disabled');

            /*Pruebas para sacar el modal*/
            $('#next2').attr('style', 'display:none;');
            $('.finish').removeAttr('style');
        }
        
        var data={idClause: idSelect,idProject: idProject, answer: ans};
        $.post('/insertAnswer',data);
        
       // console.log('k NEXT2: '+k);
        
        var selected = document.getElementById(arrayId[k+1]); //SELECCIONA EL SEGUNDO
        //console.log("ESPECIAL: "+k);
        
        selected.setAttribute("selected", "selected"); //EL PROBLEMA NO ES LA K, ES Q SI EL OPTION HABIA ESTADO SELECCIONADO ANTES --> NO SE VUELVE A         SELECCIONAR
        
        idSelect = $("select option:selected").attr("id"); //aqui cojo el id
        
        if(idSelect==undefined){
            
         //   idSelect = "05.3";
            
        console.log("ERROR");
        }
        
        //console.log("problema"+idSelect); //------------------------------ PROBLEMA
        
        var selected1 = document.getElementById(arrayId[k]);
        strText = $("select option:selected").text();
        $(".clausesTitle").text(strText); 
        paint(ans, selected1);

        //k=arrayId.indexOf(idSelect);    //POSIBLE CAMBIO
        
        k=k+1;
        console.log('k NEXT: '+k);
       // console.log('k NEXT3: '+k);
        
        var datos={idClause: idSelect,idProject: idProject};

        $.post('/dataClause',datos,function(data){ // POST CLICK
                
            $('#pru1').html(data.notApplicableRQ);
            $('#pru2').html(data.passRQ);
            $('#pru3').html(data.failRQ);
            $('#pru4').html(data.notEvaluatedRQ);
            $('#pru6').html(data.notApplicableSH);
            $('#pru7').html(data.passSH);
            $('#pru8').html(data.failSH);
            $('#pru9').html(data.notEvaluatedSH);        
            $(".clausesName").text(data.clause);

            var j=0;
            while(j<data.typeOfAssessment.length){
                $("#table"+j).show();
                $("#t"+j+"0").html(data.typeOfAssessment[j]);
                $("#t"+j+"1").html(data.preconditions[j]);
                $("#t"+j+"2").html(data.procedure[j]);
                $("#t"+j+"3").html(data.result[j]);
                j++;
            }
                
            if(j==1) {
                $("#table"+j).hide();
            }
                
            //$("#textCompliance").text(compliance);
            
            if(data.note.length <1){
                $("#divNotes").attr("style","display:none");
            }
            else{
                $("#divNotes").removeAttr("style");
            }
            
            $("#note").text(data.note.join("\n"));      
        }); //END POST CLICK

         //if($("select option:selected")){
            
            //idSelect = $("select option:selected").attr("id"); //aqui cojo el id

        //     console.log("siguientes Ids:"+idSelect);
        //     console.log("valor del next:"+ans);
         //}

    });    
    
});
//----------------------------------------------------------FUNCIONES AUXILIRES
function paint(argv,argv2) { //FUNCION PARA PINTAR
    if(argv == "Not Evaluated"){
        argv2.style.backgroundColor = "lightgray";
        argv2.style.borderStyle = "solid";
    }     
    else if(argv == "Pass"){
        argv2.style.backgroundColor = "lightgreen";
        argv2.style.borderStyle = "solid";
        //var valPass = document.getElementById("pass"); 
        //valPass.setAttribute("checked", "checked");
    }
    else if(argv == "Fail"){
        argv2.style.backgroundColor = "#FF8C8C";
        argv2.style.borderStyle = "solid";
        //var valFail = document.getElementById("fail"); 
        //valFail.setAttribute("checked", "checked");
    }
    else {
        argv2.style.backgroundColor = "#FF9973";
        argv2.style.borderStyle = "solid";
        //var valNot = document.getElementById("notApp"); 
                //$("input[name='ans']").prop("checked", false); //OJOOOOOOOOOOOOOOOOOOOO
                //valNot.setAttribute("checked", "checked");
    }
}

/*function check(argv) {
    if(argv == "Pass"){
        $("#pass").attr('checked', true);
        //console.log("Entra");
    }else if(argv=="Fail"){
    //    var valF = document.getElementById("fail"); 
    //    valF.setAttribute("checked", "checked");
        $("#fail").attr('checked', true);
    }else if(argv=="Not Applicable"){
    //    var valNA = document.getElementById("notApp"); 
    //    valNA.setAttribute("checked", "checked");
        $("#notApp").attr('checked', true);
    }
    /*else {
        $("input[name='ans']").attr("checked", false);
        //$("input[name='ans']").prop("checked", "");
    }
}
*/

function removeOption(argv, argv2) {
    if(argv == "Not Applicable"){
        var remov = document.getElementById(argv2); 
        remov.setAttribute("style", "display:none");   
    }
}