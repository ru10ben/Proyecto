$(function(){
    var idProject=$.cookie('idProject');
    var i=0;
    $("#notes").click(function(){   
         $(".p1").toggle();
    });

    $("#compliance").click(function(){
         $(".p2").toggle();
    });
    
    var datos={idProject: idProject};
    select = document.getElementById("selectClas");
    
    $.post('/clausesEvaluation', datos, function(data) {
        while(i<data.length){
            var opt = document.createElement("option");
            opt.id = data[i].id;
            opt.value= data[i].answer;
            opt.innerHTML = data[i].id+' '+data[i].title;
            select.appendChild(opt);
            i++;
        }
        //if(data!="ERROR"){
        //    while(i<data.length){
        //            myselect(data[i].id, data[i].title, data[i].answer);
        //        i++;
        //    }            
        //}
    });
//    $("#next2").click(function(){  
//    });
    
    //post enviar la cookie aki
});

/*var myselect=function(column,column2,column3){
        var clon=$(".clauses").clone();
        clon.removeAttr('style');
        clon.find("input[name=clauses]").attr("value",column3); //tanto el valor como el id van a tomar el valor del id que necesitemos
        clon.find("input[name=clauses]").attr("id",column);
        clon.find("input[name=clauses]").text(column+' '+column2);
        //clon.find('#pru1').text(column);
        //clon.find('#pru2').text(column2);
        //clon.find('#pru3').text(column3+'%');
        $(".clauses").after(clon);    
}*/