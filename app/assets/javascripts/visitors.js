$(document).on('click', '.scroll-button', function() {
  var hash = $(this).attr('href');
  var offset = $(hash).offset();
  if (offset) {
    $('html, body').animate({ scrollTop: offset.top }, 1500);
    location.hash = hash;
    return false;
  }
});