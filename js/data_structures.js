var colors = ["blue", "brown", "white", "green"]
var names =["Stela ", "Ed", "Boxer", "Caligula"]

colors.push("orange");
names.push("Ringo");

console.log(colors);
console.log(names);

var stable = {};
for (var i=0; i < names.length; i++) {
	stable[names[i]] = colors[i];
}
console.log(stable);

function Car(speed, color, volumeOfHorn) {
	this.speed = speed;
	this.color = color;
	this.volumeOfHorn = volumeOfHorn;

	this.honk = function() {
		if (volumeOfHorn > 10) {
			console.log("HOOOOOOOOOOOOONK!");
		} else {
			console.log("honk");
		}
	}

	console.log("Our car is " + this.speed + " mph fast.  It is " + this.color + "and the horn sounds like this: " + this.honk);
}

var newCar = new Car(55, "blue", 8);
console.log(newCar);
console.log(newCar.honk);