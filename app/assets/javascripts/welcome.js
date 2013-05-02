$( document ).ready(function(){

  $("#amount").blur(function(){
    var value = $(this).val();
    if ($.isNumeric(value) == false) {
    alert('please enter a valid number');
    }
  });
});
