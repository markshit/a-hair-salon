b64email = $("#email").html()
$("#email").html atob(b64email)

$(".showbox").flip
  trigger: "manual"

$(".showbox").flip false

$(".show-arrow").click ->
  window.location = "#what-i-had-done-before"
  $(".row").removeClass "show-arrow"
  showboxes = $(".showbox")
  for idx in [0..showboxes.length]
    setTimeout(
      (i) ->
        $($(".showbox")[i]).flip true
      idx * 100 + 100,
      idx
    )
