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
            $('#question').text(data.question);
            $('#help').text(data.help);
            var clausesArr2=data.clauses;
            clausesArr2=clausesArr2.split(",");
            while(i<clausesArr2.length){

                var opt = document.createElement("option");
                opt.value = i;
                opt.innerHTML = clausesArr2[i];
                select1.appendChild(opt);
                i++;
    } 
        });
    });
});
