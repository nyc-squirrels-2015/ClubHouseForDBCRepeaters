// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
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

  $(".delete").on("click",function(event){
   event.preventDefault();
   var target = $(event.target);
   var url = target.attr('href');
   var target_id = target.attr('href').split('/')[1];
   $.ajax({
    type:'delete',
    url: url
   }).success(function(){
    $('#' + target_id).remove();
   });
 });
});
