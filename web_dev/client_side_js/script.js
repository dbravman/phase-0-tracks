//release1
//set the color of everything in els to blue
function changeTextBlue() {
	var els = document.getElementsByTagName("li");
	
	for (var i = 0; i < els.length; i++) {
		els[i].style.color = "blue";
	}
}

changeTextBlue();

//release2

//set the color of everything in els to blue
function changeTextBlue(event) {
    console.log(event);
//   event.target = document.getElementsByTagName("li");
   
//    for (var i = 0; i < event.target.length; i++) {
   event.target.style.color = "blue";
   
}

//changeTextBlue();

var text = document.getElementsByTagName("li");
text[0].addEventListener("click", changeTextBlue);
text[1].addEventListener("click", changeTextBlue);