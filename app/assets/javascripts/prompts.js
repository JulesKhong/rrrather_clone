$(function(){
  $('.AB_vote input[type=radio]').click(function() {
    $(this).parent('form').submit();
  });
});
