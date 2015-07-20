$(document).ready(function(){
  // transform base64 encoded email address to normal text
  // we use base64ed email address, so simple email-spiders can go fuck themself
  var b64Email = $("#email").html();
  $("#email").html(atob(b64Email));

  var bodyHeight = $("body").height() - $(window).height();
  window.onscroll = function() {
    // Determine the amount to rotate by.
    var deg = -window.scrollY * (360 / bodyHeight);

    $(".square").css({
      "transform": "rotate(" + deg + "deg)",
    });
  };
});
