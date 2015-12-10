$(function(){
    var idProject=$.cookie('idProject');
    var i=0; 
    var arrayId;
    var valor;
    var valor2;
    var valorId;
    var opt;
    var datos={idProject: idProject};
    var idSelect;
    var strText;
    
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
                //valNot.setAttribute("checked", "checked");
            }
            opt.innerHTML = data[i].id+' '+data[i].title;
            select.appendChild(opt);
            i++;
        }
        var selected = document.getElementById(arrayId[0]); //esto es para sacar el primer requisito seleccionado
        selected.setAttribute("selected", "selected");
        
        if($("select option:selected")){
            idSelect = $("select option:selected").attr("id"); //aqui cojo el id
            strText = $("select option:selected").text(); 
        }
        
        $(".clausesTitle").text(strText);
        

    }); //END POST
    
            $("select").on("change", function() {
            var strText1="";
            var strVal="";
            var idSelect1=null;
            idSelect1 = $("select option:selected").attr("id");
            strText1 = $("select option:selected").text();
            strVal = $("select option:selected").val();
            console.log(idSelect1);
            console.log(strText1);
            console.log(strVal);
            $(".clausesTitle").text(strText1);
            
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
                var juan = document.getElementsByName("ans");
                juan.setAttribute("checked", false);
            }
            //HACER UN POST MANDANDOLE EL ID PARA QUE ME DEVUELVA DATOS No lo entiendo este post
        })
    
    var j = 0;
    var k = 1;
    $("#next2").click(function(){
        var selected = document.getElementById(arrayId[k]); //esto es para sacar el primer requisito seleccionado
        selected.setAttribute("selected", "selected");
        if($("select option:selected")){
            idSelect = $("select option:selected").attr("id"); //aqui cojo el id
            strText = $("select option:selected").text(); 
        }
        var selected = document.getElementById(arrayId[j]);
        selected.removeAttribute("selected");
        //HACER OTRO POST PARA MANDAR DATOS AL SERVIDOR             
        //compliance y notes
        //id y el pass o lo q sea
        j=j+1;
        k=k+1;  
    });
    
});