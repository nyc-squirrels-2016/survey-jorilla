$(document).ready(function() {

var choice =
'<br><input class="choice-input" type="text" name="choice[]"><br>'

$('.add-choice').click(function(event){
  event.preventDefault();
  $(".choice-field").append(choice);

  })

});



  // $('.choice-form').each(function() {
      // var $wrapper = $('.choice-fields', this);
      // $(".add-field", $(this)).click(function(e) {
      //     $('.choice-field:first-child', $wrapper).clone(true).appendTo($wrapper).find('input').val('').focus();
      // });
      // $('.choice-field .remove-field', $wrapper).click(function() {
      //     if ($('.choice-field', $wrapper).length > 1)
      //         $(this).parent('.choice-field').remove();
      // });
  // });

  // $('.multi-field-wrapper').each(function() {
  //     var $wrapper = $('.multi-fields', this);
  //     $(".add-field", $(this)).click(function(e) {
  //         $('.multi-field:first-child', $wrapper).clone(true).appendTo($wrapper).find('input').val('');
  //     });
  //     $('.multi-field .remove-field', $wrapper).click(function() {
  //         if ($('.multi-field', $wrapper).length > 1)
  //             $(this).parent('.multi-field').remove();
  //     });
  // });


