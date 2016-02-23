$(document).ready(function() {

  var choice = '<p><input class="choice-input" type="text" name="choice[]"></p>'

  $(".add-choice").on("click", function(e){
    e.preventDefault();
    $(".choice-form").append(choice);
  });

  $('.remove-choice').on("click", function(e){
    $('.choice-form').children().last().remove();
  });

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


