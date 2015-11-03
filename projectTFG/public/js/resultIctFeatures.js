$(function(){              
    var clauses=$.cookie('clauses');
    var historic=$.cookie('historic');
    var i=0;
    select1 = document.getElementById("ansToQuest");
    select2 = document.getElementById("appliClaus");
    
    var clausesArr = clauses.split(";");
    var historicArr = historic.split(";");

        while(i<clausesArr.length){
            var opt = document.createElement("option");
            opt.value = i;
            opt.innerHTML = clausesArr[i];
            select2.appendChild(opt);
            i++;
        }
    i=0;
        while(i<historicArr.length){
            var opt2 = document.createElement("option");
            opt2.value = i;
            opt2.innerHTML = historicArr[i];
            select1.appendChild(opt2);
            i++;
        }    

});