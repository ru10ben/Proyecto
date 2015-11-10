$(function(){              
    
    var listArray = new Array ("Juan", "Pepito", "Piter", "Javi", "Ruben");
    console.log(listArray);
    var i=0;
    var valor;
    var texto;
    var valor2;
    var texto2;
    select = document.getElementById("evaluatorName1");
    select2 = document.getElementById("evaluatorName2");
    //var opt2 = document.createElement("option");

    while(i<listArray.length){
        var opt = document.createElement("option");
        opt.value = i;
        opt.innerHTML = listArray[i];
        select.appendChild(opt);
        i++;
    } 
    
    $('select#evaluatorName1').on('change',function(){
        valor = $(this).val();
        texto = $("#evaluatorName1 option:selected").text();
        console.log(valor);
        console.log(texto);
    });
    
    $('select#evaluatorName2').on('change',function(){
        valor2 = $(this).val();
        texto2 = $("#evaluatorName2 option:selected").text();
        console.log(valor2);
        console.log(texto2);
    });

    
    $('#right').click(function(){ //en proyecto
        //$("<option value='5'>Scientific Linux</option>").appendTo("#miselect");
        var opt2 = document.createElement("option");
        opt2.value=valor;
        opt2.innerHTML = texto;
        select2.appendChild(opt2);
        $("#evaluatorName1 option[value='"+valor+"']").remove();
        
    });

    $('#left').click(function(){ //en proyecto
        //$("<option value='5'>Scientific Linux</option>").appendTo("#miselect");
        var opt3 = document.createElement("option");
        opt3.value=valor2;
        opt3.innerHTML = texto2;
        select.appendChild(opt3);
        $("#evaluatorName2 option[value='"+valor+"']").remove();
        
    });
});