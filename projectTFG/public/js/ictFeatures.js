$(function(){
    
    var productName=$.cookie("productName");
    var question=$.cookie("question");
    var help=$.cookie("help");
    var clauses=$.cookie("clauses");
    var clausesArr = clauses.split(","); 
    
    $(".titleName").text(productName);
    $("#question").text(question);
    $("#help").text(help);
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
       // $("#Yes").prop("checked", true);
        var param = { answer:$("input[name='answer']:checked").val()};
        $.post( "/next", param, function( data ) {
            if(data.message=='You have completed the evaluation'){
                $('.myaccordion').hide();
                $('#switch').hide();
                $('#field').hide();
                $('#questions').text("Message: ");
                $('#question').text(data.message);
                $('#answer').hide();
                $('#nextquest').hide();
                $('#showresults').show();

                 clausesArr2=data.clauses;
                var historic=data.historic;
                var actualHistoric=historic[historic.length-1];
                
                var opt2 = document.createElement("option");
                opt2.innerHTML = actualHistoric;
                select.appendChild(opt2);
            
                while(i<clausesArr2.length){
                    var opt = document.createElement("option");
                    opt.value = i;
                    opt.innerHTML = clausesArr2[i];
                    select1.appendChild(opt);
                    i++;
                }
                $.cookie('clauses',clausesArr2.join(";")); ///
                 console.log($.cookie('clauses1',clausesArr2.join(";")));
            }else{
                $('#question').text(data.question);
                $('#help').text(data.help);
                var clausesArr2=data.clauses;
                var historic=data.historic;
                var actualHistoric=historic[historic.length-1];
                
                var opt2 = document.createElement("option");
                opt2.innerHTML = actualHistoric;
                select.appendChild(opt2);
            
                while(i<clausesArr2.length){
                    var opt = document.createElement("option");
                    opt.value = i;
                    opt.innerHTML = clausesArr2[i];
                    select1.appendChild(opt);
                    i++;
                }
            }
        });
    });
});
