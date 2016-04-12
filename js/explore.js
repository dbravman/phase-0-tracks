//input: string
//output: reversed string

function reverse(string) {
	//initialize new string
	var newString = "";
	//starting at the last character, loop backward
	for (var i = string.length - 1; i >= 0; i--) {
		//Copy each character into the new string
		newString += string[i];
	}
	//return the new string
	return newString;
}

//driver code
var backwards = reverse("Hello world");
if (true) {
	console.log(backwards);
}