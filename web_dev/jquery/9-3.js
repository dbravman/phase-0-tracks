//put p text in orange on hover.
//revert on unhover
$(document).ready(function() {
	$originalColor = $("div, p").css("color");
	$("p").mouseenter(function () {
		$(this).css("color", "orange");
	});
	$("p").mouseleave(function() {
		$(this).css("color", $originalColor);
	});
});