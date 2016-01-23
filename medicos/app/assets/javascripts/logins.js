(function(){
    $(document).ready(function(){
        $(".fechar").on("click", function(){
            var pai = $(this).parent();
            pai.fadeOut();
        });
    });    
})()
