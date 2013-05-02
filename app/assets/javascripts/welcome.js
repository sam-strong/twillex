$( document ).ready(function(){

  $("#amount").blur(function(){
    var value = $(this).val();
    if ($.isNumeric(value) == false) {
    alert('please enter a valid number');
    }
  });
});



//   validate(function(e) {
//     e.preventDefault();
//     alert("thanks for visiting");
//   });
// });


// function ValideInteger(value) {
//   if (value.)
// }












// $("#amount").keyup(function(){
//   var value =


// })