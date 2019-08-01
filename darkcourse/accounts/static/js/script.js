$(document).ready(function(){
 $("input#public").change(function(){

  if ($(this).attr("checked")) {
      $('#hide').fadeIn().show();
      return;
  } else {
      $('#hide').fadeOut(300);
  }

 });
});