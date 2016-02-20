$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()





  $('.question-field-wrapper').each(function() {
      var $wrapper = $('.question-fields', this);
      $(".add-field", $(this)).click(function(e) {
          $('.question-field:first-child', $wrapper).clone(true).appendTo($wrapper).find('input').val('').focus();
      });
      $('.question-field .remove-field', $wrapper).click(function() {
          if ($('.question-field', $wrapper).length > 1)
              $(this).parent('.question-field').remove();
      });
  });


});
