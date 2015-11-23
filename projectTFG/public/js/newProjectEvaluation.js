$(function(){
    $('#name').on('focusout', function(){
        if($('name').val()!=""){
            var productName = $('#name').val();
            $.cookie('productName', productName); 
            $.get( "/getData", function( data ) {
                $.cookie('question',data.question);
                $.cookie('help',data.help);
                $.cookie('clauses',data.clauses);
               // var clauses0=$.cookie("clauses");
                //console.log(clauses0);
                //var clauses1=clauses0.split(",0");
                //console.log(clauses1);
                //var clauses2=clauses1.join(";0");
                //console.log(clauses2);
            });
        }
    });
    
});