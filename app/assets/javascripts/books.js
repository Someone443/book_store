$(document).ready(function(){
    $(document).on('click', '.fa-plus', function(){
      $('.quantity-input').val(parseInt($('.quantity-input').val()) + 1);
    });
      $(document).on('click', '.fa-minus', function(){
        $('.quantity-input').val(parseInt($('.quantity-input').val()) - 1);
        if ($('.quantity-input').val() == 0) {
          $('.quantity-input').val(1);
        }
      });
});
