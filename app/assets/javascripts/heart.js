$(document).ready(function() {
  $('.wishlist i').on('mouseenter', function() {
    $(this).removeClass('fa-heart-o').addClass('fa-heart');
  });

  $('.wishlist i').on('mouseleave', function() {
    $(this).removeClass('fa-heart').addClass('fa-heart-o');
  });
})
