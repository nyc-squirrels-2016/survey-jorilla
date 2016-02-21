$(document).ready(function() {
   var choice =
   // '<div class="choice-field">',
   '<input class="choice-input" type="text" name="choice[]"><br>'
   // '</div>'

  $(".add-choice").click(function(event){
    event.preventDefault();
    // debugger;
    // var newInput = $(document.createElement("choice-field"))
    // var newInput = $("choices[]");
    $(".choice-field").append(choice);


  });



});
