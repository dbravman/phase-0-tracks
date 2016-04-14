// release0
// input: an array of strings
// output: a string of the longest word in the array
	// NOTE for reviewer: I assumed that if there is a tie, that the function should return an array with all the tied strings.
function findLongestString(array) {
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

//release1
// input: 2 objects
// output: boolean of whether there is at least 1 matching key-value.
function findKeyValueMatch(object1, object2) {
	//iterate through keys of first object
	for (var key in object1) {
		//IF the value for that key in the first object equals the value in the second object 
		if (object1[key] == object2[key]) {
			//THEN RETURN TRUE
			return true;
		// ELSE keep iterating
		}
	}
	// when done iterating, since no match will have been found, RETURN FALSE	
	return false;
}

//release2
//input: integer n
//output: array of n strings 
function generateRandomTestData(integer) {
	//create empty output array
	var array = [];
	//iterate n times
	for (var i = 0; i < integer; i++) {
		//create empty string
		var string = "";	
		var randomLength = randomNumberBetween(1,10);
		//iterate a random number 1-10 times
		for (var i = 0; i < randomLength; i++) {
			//add a random letter to the string
			string += randomLetter();
		}
		//push string to array
		array.push(string);
	}
	//RETURN array
	return array;
}

//NOTE for reviewer: I looked up this randomNumberBetween function online.  The instructions implied that I should even though it's a solo challenge.
//input: integer min and integer max
//output: random number between min and max
function randomNumberBetween(min, max) {
	var decimal = Math.random() * (max - min) + min;
	return Math.round(decimal); 
}

//input: nil
//output: random letter
function randomLetter() {
	var letters = "abcdefghijklmnopqrstuvwxyz";
	return letters[randomNumberBetween(0,25)];
}


//driver code

//release0
var array1 = ["long phrase","longest phrase","longer phrase"];
var array2 = ["long phrase","longest phrase 1","longer phrase","longest phrase 2"];
console.log(findLongestString(array1));
console.log(findLongestString(array2));

// release1
object1 = {name: "Steven", age: 54};
object2 = {name: "Tamir", age: 54};
object3 = {};
console.log(findKeyValueMatch(object1, object2)); 
console.log(findKeyValueMatch(object1, object3)); 

//release2
for (var i = 1; i <= 10; i++) {
	var testData = generateRandomTestData(i);
	console.log(testData);
	console.log(findLongestString(testData));
}