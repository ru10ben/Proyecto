$(function(){
    $('#name').on('focusout', function(){
        var project={productName: $('#name').val()};
        $.cookie('productName',data.username); 
        $.get( "/getData", function( data ) {
            $.cookie('question',data.question);
            $.cookie('help',data.help);
            $.cookie('clauses',data.clauses);
         });
    });
    
});