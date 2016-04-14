// release0
// input: an array of strings
// output: a string of the longest word in the array
	// What if there is a tie?  Assume that it should return all
function longestString(array) {
	// find the longest length
	var maxLength = longestLength(array);
	// start with an empty output array
	answers = [];
	// iterate over the input
	for (var i = 0; i < array.length; i++) {
		// push all strings with the longest length to the output array
		if (array[i].length == maxLength) {
			answers.push(array[i]);
		}
	}

	// IF output has only 1 element
	if (answers.length == 1) {
		// THEN RETURN it
		return answers[0];
	// ELSE
	} else {
		// RETURN the whole array
		return answers;
	}
}

// input: an array of strings
// output: the integer length of the longest string(s)
function longestLength(array) {
// start with an empty current longest
	var currentLongest = "";
	// iterate over the array
	for (var i = 0; i < array.length; i++) {
		// IF the string is longer than current longest
		if (array[i].length > currentLongest.length) {
			// THEN it becomes the current_longest 
			currentLongest = array[i];
		}
	}

	// RETURN the length of the current longest
	return currentLongest.length;
}

//driver code
var array1 = ["long phrase","longest phrase","longer phrase"];
console.log(longestString(array1));