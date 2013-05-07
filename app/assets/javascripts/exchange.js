
$(document).ready(function() {
 $("form").on("ajax:success", function(e, data, status, xhr)
 {
    return $("#result").html(data.amount);
  });
 $("form").on("ajax:success", function(e, data, status, xhr)
 {
    return $("#currency").html(data.to_currency);
  });

});