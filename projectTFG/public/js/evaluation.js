$(function(){
    var idProject=$.cookie('idProject');
    var i=0; //tamaño array
    var selected;
    var arrayId;
    var valor;
    var valor2;
    var valorId;
    var opt;
    var datos={idClause: idSelect, idProject: idProject, answer: ans};
    var idSelect;
    var strText;
    var valSelect;
    var k=0;
    var ans;

    //var valPass;

//    $("input[name=ans]").click(function () {     
        //ans = $("input[name='ans']:checked").val();
//        console.log(ans);
//    });
    
    $("#notes").click(function(){   
         $(".p1").toggle();
    });

    $("#compliance").click(function(){
         $(".p2").toggle();
    });
    
    select = document.getElementById("selectClas");
        arrayId=new Array();
    
    //tabla
    $.post('/tablaEvaluation', datos, function(data) {
        $('#pru1').html(data.notApplicableRQ);
        $('#pru2').html(data.passRQ);
        $('#pru3').html(data.failRQ);
        $('#pru4').html(data.notEvaluatedRQ);
        $('#pru6').html(data.notApplicableSH);
        $('#pru7').html(data.passSH);
        $('#pru8').html(data.failSH);
        $('#pru9').html(data.notEvaluatedSH);
    });
    
    $.post('/clausesEvaluation', datos, function(data) { //PRIMER POST
        
        while(i<data.length){
            opt = document.createElement("option");
            opt.id = data[i].id;
            opt.value= data[i].answer;
            arrayId=arrayId.concat(opt.id);
            
            paint(opt.value,opt); //funcion para pintar la tabla
            
            /*if(opt.value=="Not Evaluated"){
                opt.style.backgroundColor = "lightgray";
                opt.style.borderStyle = "solid";
            }     
            else if(opt.value=="Pass"){
                opt.style.backgroundColor = "lightgreen";
                opt.style.borderStyle = "solid";
                var valPass = document.getElementById("pass"); 
                valPass.setAttribute("checked", "checked");
            }
            else if(opt.value=="Fail"){
                opt.style.backgroundColor = "#FF8C8C";
                opt.style.borderStyle = "solid";
                var valFail = document.getElementById("fail"); 
                valFail.setAttribute("checked", "checked");
            }
            else {
                opt.style.backgroundColor = "#FF9973";
                opt.style.borderStyle = "solid";
                var valNot = document.getElementById("notApp"); 
                //$("input[name='ans']").prop("checked", false); //OJOOOOOOOOOOOOOOOOOOOO
                //valNot.setAttribute("checked", "checked");
            }*/
            
            opt.innerHTML = data[i].id+' '+data[i].title;
            select.appendChild(opt);
            i++;
            
        } //END WHILE
        
        selected = document.getElementById(arrayId[0]); //esto es para sacar el primer requisito seleccionado
        selected.setAttribute("selected", "selected");
        
        if($("select option:selected")){
            idSelect = $("select option:selected").attr("id"); //aqui cojo el id
            strText = $("select option:selected").text();
            valSelect = $("select option:selected").val();
            console.log("primer:"+idSelect);
        }

        var datos={idClause: idSelect, idProject: idProject, answer: ans};
        $.post('/dataClause',datos,function(data){  //SEGUNDO POST
            $(".clausesName").text(data.clause);
            //Aquí se debería crear una tabla con los datos
            $("#textCompliance").text(data.typeOfAssessment+'\n'+data.preconditions+'\n'+data.procedure+'\n'+data.result);
            
            if(data.note.length <=1){
                $("#divNotes").attr("style","display:none");
            }
            
            $("#note").text(data.note.join("\n"));        
        }); //END SEGUNDO POST
        
        $(".clausesTitle").text(strText);
        
    }); //END PRIMER POST
    
        $("select").on("change", function() {
            var strText1="";
            var strVal="";
            var idSelect1;
            // var selected = document.getElementById(arrayId[k]);
            // selected.removeAttribute("selected");

            idSelect1 = $("select option:selected").attr("id");
            k=arrayId.indexOf(idSelect1);
            console.log('k change: '+k);
            if($("select option:selected")){
                strText1 = $("select option:selected").text();
                strVal = $("select option:selected").val();
            }
            var datos={idClause: idSelect1};
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
                //$("#textCompliance").text(data.typeOfAssessment+'\n'+data.preconditions+'\n'+data.procedure+'\n'+data.result);
                //Aquí se debería crear j tablas con los datos
                var j=0;
                var compliance='';
                while(j<data.typeOfAssessment.length){
                    compliance=compliance.concat(data.typeOfAssessment[j]+'\n'+data.preconditions[j]+'\n'+data.procedure[j]+'\n'+data.result[j]+'\n');
                    j++;
                }
                $("#textCompliance").text(compliance);
                
                if(data.note.length <1){
                    $("#divNotes").attr("style","display:none");
                }
                else{
                    $("#divNotes").removeAttr("style");
                }
                
                $("#note").text(data.note.join("\n"));        
            });// END POST CHANGE
 
            $(".clausesTitle").text(strText1);
            console.log(strVal);

            if(strVal=="Pass"){
                var valP = document.getElementById("pass");
                console.log(strVal);
                valP.setAttribute("checked", "checked");
            }
            else if(strVal=="Fail"){
                var valF = document.getElementById("fail"); 
                valF.setAttribute("checked", "checked");
            }
            else if(strVal=="Not Applicable"){
                var valNA = document.getElementById("notApp"); 
                valNA.setAttribute("checked", "checked");
            }
            else{
                //$("input[name='ans']").prop("checked", false);
            }
        })
    //var j = 0;
    //var k = 1;
    $("#next2").click(function(){ 
        ans = $("input[name='ans']:checked").val();
        console.log(ans);
        $("select option:selected").removeAttr("selected")
        
        // var selected = document.getElementById(arrayId[k]);
        // console.log('k click actual: '+k);
        // selected.removeAttribute("selected");

        var selected = document.getElementById(arrayId[k+1]); //esto es para sacar el primer requisito seleccionado
        selected.setAttribute("selected", "selected");
        
        var datos={idClause: idSelect, idProject: idProject, answer: ans};
        
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
            var compliance='';
            while(j<data.typeOfAssessment.length){
                compliance=compliance.concat(data.typeOfAssessment[j]+'\n'+data.preconditions[j]+'\n'+data.procedure[j]+'\n'+data.result[j]+'\n');
                j++;
            }
            $("#textCompliance").text(compliance);
            
            if(data.note.length <1){
                $("#divNotes").attr("style","display:none");
            }
            else{
                $("#divNotes").removeAttr("style");
            }
            
            $("#note").text(data.note.join("\n"));      
        }); //END POST CLICK
        if($("select option:selected")){
            idSelect = $("select option:selected").attr("id"); //aqui cojo el id
            strText = $("select option:selected").text();
            k=arrayId.indexOf(idSelect); 
            $(".clausesTitle").text(strText);
            console.log(idSelect);
        }
    });
    
});

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