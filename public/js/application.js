$(document).ready(function() {
  var choice = '<input class="choice-input" type="text" name="choice[]"><br>'

  $(".add-choice").click(function(e){
    e.preventDefault();
    $(".choice-field").append(choice);
  });

  $(".individual-question").on('submit', function(e) {
    e.preventDefault();
    var count = 1
    var request = $.ajax({
      method: "POST",
      url: e.target.action,
      data: $(this).serialize()
    });
    request.done(function(){
      $(e.target).hide();
    });
  });
});
