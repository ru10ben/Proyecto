$(function(){              
    var clauses=$.cookie('clauses');
    console.log(clauses);
    
    var i=0;
    select = document.getElementById("appliClaus");

        var clausesArr = clauses.split(";");
    
        while(i<clausesArr.length){
            var opt = document.createElement("option");
            opt.value = i;
            opt.innerHTML = clausesArr[i];
            select.appendChild(opt);
            i++;
        }   

});