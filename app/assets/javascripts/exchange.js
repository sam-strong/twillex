
$(document).ready(function() {
 $("form").on("ajax:success", function(e, data, status, xhr)
 {
<<<<<<< HEAD
    return $("#result").html(data.amount);
  });
 $("form").on("ajax:success", function(e, data, status, xhr)
 {
    return $("#currency").html(data.to_currency);
  });

=======
    return $("#result").append(xhr.responseText);
  });
>>>>>>> 533d4031836fd032897b699c58ca61a4d2cf10f7
});