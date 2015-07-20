$(document).ready(function(){
   var bodyHeight = $("body").height()-$(window).height();
   window.onscroll = function() {

      //Determine the amount to rotate by.
      var deg = -window.scrollY*(360/bodyHeight);

      $(".square").css({
        "transform": "rotate("+deg+"deg)",
      });

   };
});