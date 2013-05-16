
$(document).ready(function() {
 $("form").on("ajax:success", function(e, data, status, xhr)
 {
    return $("#result").html(data.amount);
  });
});