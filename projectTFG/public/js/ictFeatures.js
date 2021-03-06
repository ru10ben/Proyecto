$(function(){
    
    var productName=$.cookie('productName');
    var question=$.cookie('question');
    var help=$.cookie('help');
    //var clauses=$.cookie('clauses');
    var idProject=$.cookie('idProject');
    var clauses=$.cookie('myClauses');
    var myHistoric=new Array();
    var actualQuest='Q01';
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
        var param = { answer:$("input[name='answer']:checked").val(),idProject: idProject,actualQuest: actualQuest, clauses: clausesArr};
        $("#Yes").prop("checked", true);
        $.post( "/next", param, function( data ) {
            if(data.message=='You have completed the evaluation'){
                var question=$('#question').text();
                
                $('.myaccordion').hide();
                $('#switch').hide();
                $('#field').hide();
                $('#questions').text("Message: ");
                $('#question').text(data.message);
                $('#answer').hide();
                $('#nextquest').hide();
                $('#showresults').show();

                clausesArr=clausesArr.concat(data.clauses);
                var actualHistoric='['+param.answer+'] <- '+question;
                myHistoric=myHistoric.concat(actualHistoric);
                
                var opt2 = document.createElement("option");
                opt2.innerHTML = actualHistoric;
                select.appendChild(opt2);
            
                while(i<clausesArr.length){
                    var opt = document.createElement("option");
                    opt.value = i;
                    opt.innerHTML = clausesArr[i].id+' '+clausesArr[i].title;
                    select1.appendChild(opt);
                    i++;
                }
            }else{
                actualQuest=data.actualQuest;
                var question=$('#question').text();
                $('#question').text(data.question);
                $('#help').text(data.help);
                clausesArr=clausesArr.concat(data.clauses);
                var actualHistoric='['+param.answer+'] <- '+question;
                myHistoric=myHistoric.concat(actualHistoric);
                
                var opt2 = document.createElement("option");
                opt2.innerHTML = actualHistoric;
                select.appendChild(opt2);
            
                while(i<clausesArr.length){
                    var opt = document.createElement("option");
                    opt.value = i;
                    opt.innerHTML = clausesArr[i].id+' '+clausesArr[i].title;
                    select1.appendChild(opt);
                    i++;
                }
            }
        });
    });
    $("#showresults").on("click",function(){
        var i=0;
        var arrayId=new Array();
        var arrayId2;
        while(i<clausesArr.length){
            arrayId[i]=clausesArr[i].id;
            i++;
        }
        arrayId.splice(0,6);
        arrayId.unshift("05.2","05.3","05.4","05.7","05.8","05.9");
        var arrayId2={arrayId:arrayId.toString(),idProject:idProject};
        $.post( "/clausesFinal", arrayId2,function( data ) {
            if(data='OK'){
                window.location='/result'; 
            }
        });
    });
});
