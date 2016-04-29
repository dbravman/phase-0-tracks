//set the color of everything in els to blue
function changeTextBlue() {
	var els = document.getElementsByTagName("li");
	
	for (var i = 0; i < els.length; i++) {
		els[i].style.color = "blue";
	}
}

changeTextBlue();