
$(document).ready(function() {
 $("form").on("ajax:success", function(e, data, status, xhr)
 {
    var response = $("#result").html(xhr.responseText);

    response
  });

});