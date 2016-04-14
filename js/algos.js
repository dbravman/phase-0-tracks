// release0
// input: an array of strings
// output: a string of the longest word in the array
	// What if there is a tie?  Assume that it should return all
function longestWord(array) {
	// find the longest length
	var longestLength = longestLength(array);
	// start with an empty output array
	answers = [];
	// iterate over the input
	for (string in array) {
		// push all strings with the longest length to the output array
		if (string.length == longestLength) {
			answers.push(string);
		}
	}

	// IF output has only 1 element
	if (answers.length == 1) {
		// THEN RETURN it
		return answers[0];
	// ELSE
	else
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
	for (string in array) {
		// IF the string is longer than current longest
		if (string.length > currentLongest.length) {
			// THEN it becomes the current_longest 
			currentLongest = string;
		}
	}

	// RETURN the length of the current longest
	return currentLongest.length;
}