$(function(){
    
    var productName=$.cookie('productName');
    var question=$.cookie('question');
    var help=$.cookie('help');
    var clauses=$.cookie('clauses');
    
    var clausesArr = clauses.split(',');
    
    $('.titleName').text(productName);
    $('#question').text(question);
    $('#help').text(help);
    select1 = document.getElementById("listclauses");
    select = document.getElementById("listhistoric");
    var i=0;
    while(i<clausesArr.length){

        var opt = document.createElement("option");
        opt.value = i;
        opt.innerHTML = clausesArr[i];
        select1.appendChild(opt);
        i++;
    }
    $("#nextquest").on("click",function(){
        var param = { answer:$("input[name='answer']:checked").val()};
        $.post( "/next", param, function( data ) {
            if(data!='You have completed the evaluation'){
            $('#question').text(data.question);
            $('#help').text(data.help);
            var clausesArr2=data.clauses;
            var historic=data.historic;
            var actualHistoric=historic[historic.length-1];
                
                //if(actualHistoric.length>8){
                //    var parte=actualHistoric.substring(2);
                    
            //    }
            
            var opt2 = document.createElement("option");
               // if(actualHistoric.length>8){
                //    opt2.innerHTML = actualHistoric.join("\n");
                //}
            opt2.innerHTML = actualHistoric;
            select.appendChild(opt2);
            
            while(i<clausesArr2.length){
                var opt = document.createElement("option");
                opt.value = i;
                opt.innerHTML = clausesArr2[i];
                select1.appendChild(opt);
                i++;
            }
            }else{console.log(data);}
        });
    });
});
