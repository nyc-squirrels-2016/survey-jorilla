$(document).ready(function() {
  var choice = '<input class="choice-input" type="text" name="choice[]"><br>'

  $(".add-choice").click(function(e){
    e.preventDefault();
    $(".choice-field").append(choice);
  });

  // $('remove-field').click(function(e){
  //   // if ($(".choice-field")).length > 1)
  //   $(".choice-field").remove();
  // });

  $(".individual-question").on('submit', function(e) {
    e.preventDefault();
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

