(function() {
  var b64email;

  b64email = $("#email").html();

  $("#email").html(atob(b64email));

  $(".showbox").flip({
    trigger: "manual"
  });

  $(".showbox").flip(false);

  $(".show-arrow").click(function() {
    var idx, j, ref, results, showboxes;
    window.location = "#what-i-had-done-before";
    $(".row").removeClass("show-arrow");
    showboxes = $(".showbox");
    results = [];
    for (idx = j = 0, ref = showboxes.length; 0 <= ref ? j <= ref : j >= ref; idx = 0 <= ref ? ++j : --j) {
      results.push(setTimeout(function(i) {
        return $($(".showbox")[i]).flip(true);
      }, idx * 100 + 100, idx));
    }
    return results;
  });

}).call(this);
