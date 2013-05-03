$( document ).ready(function(){

  $("#amount").blur(function(){
    var value = $(this).val();
    if ($.isNumeric(value) == false) {
    alert('please enter a valid number');
    }
    else if (value > 0 == false) {
      alert("the number must be positive")
    }
  });
});
