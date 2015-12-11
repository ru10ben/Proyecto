$(function(){
    var idProject=$.cookie('idProject');
    var i=0; //tamaño array
    var arrayId;
    var valor;
    var valor2;
    var valorId;
    var opt;
    var datos={idProject: idProject};
    var idSelect;
    var strText;
    var k=0;
    
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
    
    $.post('/clausesEvaluation', datos, function(data) {
        while(i<data.length){
            opt = document.createElement("option");
            opt.id = data[i].id;
            opt.value= data[i].answer;
            //opt.name= "opti";
            arrayId=arrayId.concat(opt.id);
            
            if(opt.value=="Not Evaluated"){
                opt.style.backgroundColor = "lightgray";
                opt.style.borderStyle = "solid";
            }     
            else if(opt.value=="Pass"){
                //opt.style.backgroundColor = "#66C266";
                opt.style.backgroundColor = "lightgreen";
                opt.style.borderStyle = "solid";
                var valPass = document.getElementById("pass"); 
                valPass.setAttribute("checked", "checked");
            }
            else if(opt.value=="Fail"){
                //opt.style.backgroundColor = "#FF4D4D";
                opt.style.backgroundColor = "#FF8C8C";
                opt.style.borderStyle = "solid";
                var valFail = document.getElementById("fail"); 
                //valFail.setAttribute("checked", "checked");
            }
            else {
                //opt.style.backgroundColor = "#FF5C33";
                opt.style.backgroundColor = "#FF9973";
                opt.style.borderStyle = "solid";
                var valNot = document.getElementById("notApp"); 
                //$("input[name='ans']").prop("checked", false); //OJOOOOOOOOOOOOOOOOOOOO
                //valNot.setAttribute("checked", "checked");
            }
            opt.innerHTML = data[i].id+' '+data[i].title;
            select.appendChild(opt);
            i++;
        }
        console.log(arrayId);
        var selected = document.getElementById(arrayId[0]); //esto es para sacar el primer requisito seleccionado
        selected.setAttribute("selected", "selected");
        
        if($("select option:selected")){
            idSelect = $("select option:selected").attr("id"); //aqui cojo el id
            strText = $("select option:selected").text(); 
        }

        var datos={idClause: idSelect};
        $.post('/dataClause',datos,function(data){
            $(".clausesName").text(data.clause);
            //Aquí se debería crear una tabla con los datos
            $("#textCompliance").text(data.typeOfAssessment+'\n'+data.preconditions+'\n'+data.procedure+'\n'+data.result);
            $("#note").text(data.note.join("\n"));        
        });
        
        $(".clausesTitle").text(strText);
        
    }); //END POST
    
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
            $.post('/dataClause',datos,function(data){
                $(".clausesName").text(data.clause);
                //$("#textCompliance").text(data.typeOfAssessment+'\n'+data.preconditions+'\n'+data.procedure+'\n'+data.result);
                //Aquí se debería crear j tablas con los datos
                var j=0;
                var compliance='';
                while(j<data.typeOfAssessment.length){
                    compliance=compliance.concat(data.typeOfAssessment[j]+'\n'+data.preconditions[j]+'\n'+data.procedure[j]+'\n'+data.result[j]+'\n');
                    j++;
                }
                $("#note").text(data.note.join("\n"));        
            });
            //console.log(idSelect1);
            //console.log(strText1);
            //console.log(strVal);
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
            //HACER UN POST MANDANDOLE EL ID PARA QUE ME DEVUELVA DATOS No lo entiendo este post
        })
    
    //var j = 0;
    //var k = 1;
    $("#next2").click(function(){   

        $("select option:selected").removeAttr("selected")

        // var selected = document.getElementById(arrayId[k]);
        // console.log('k click actual: '+k);
        // selected.removeAttribute("selected");

        var selected = document.getElementById(arrayId[k+1]); //esto es para sacar el primer requisito seleccionado
        selected.setAttribute("selected", "selected");

        //k=k+1;
        if($("select option:selected")){
            idSelect = $("select option:selected").attr("id"); //aqui cojo el id
            strText = $("select option:selected").text();
            k=arrayId.indexOf(idSelect); 
            //console.log('k click: '+k);
            $(".clausesTitle").text(strText);
        }
        var datos={idClause: idSelect};
        $.post('/dataClause',datos,function(data){
            $(".clausesName").text(data.clause);
            //Aquí se debería crear j tablas con los datos
            var j=0;
            var compliance='';
            while(j<data.typeOfAssessment.length){
                compliance=compliance.concat(data.typeOfAssessment[j]+'\n'+data.preconditions[j]+'\n'+data.procedure[j]+'\n'+data.result[j]+'\n');
                j++;
            }
            $("#textCompliance").text(compliance);
            $("#note").text(data.note.join("\n"));      
        });
        //HACER OTRO POST PARA MANDAR DATOS AL SERVIDOR             
        //compliance y notes
        //id y el pass o lo q sea
        //j=j+1; 
    });
    
});