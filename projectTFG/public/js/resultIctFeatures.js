$(function(){              
    var idProject=$.cookie('idProject');
    var i=0;
    select = document.getElementById("appliClaus");
    var datos={idProject: idProject};

    $.post('/clauses', datos,function(data) {
        while(i<data.length){
            var opt = document.createElement("option");
            opt.value = i;
            opt.innerHTML = data[i].id+' '+data[i].title;
            select.appendChild(opt);
            i++;
        }   
    });
    $.removeCookie('question');
    $.removeCookie('help');
    $.removeCookie('myClauses');
    $.removeCookie('clauses22');
});