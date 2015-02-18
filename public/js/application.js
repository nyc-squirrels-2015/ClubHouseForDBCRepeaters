
$(document).ready(function() {
   $("#login_button").on("click",function(event){
      event.preventDefault();
      $.ajax({
            type:'get',
            url:'/login'
        }).success(function(response){
            $("#login_button").after('<div class="response">' + response + '</div>');
            $("#login_button").hide();
        });
    });
});