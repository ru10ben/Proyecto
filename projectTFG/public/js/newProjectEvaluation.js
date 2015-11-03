$(function(){
    $('#name').on('focusout', function(){
        if($('name').val()!=""){
            var productName = $('#name').val();
            $.cookie('productName', productName); 
            $.get( "/getData", function( data ) {
                $.cookie('question',data.question);
                $.cookie('help',data.help);
                $.cookie('clauses',data.clauses);
            });
        }
    });
    
});