# In phase-0-tracks/ruby/nested_data_structures.rb, design and build a nested data structure to represent a real-world construct. You can choose the construct: Is it a highway full of cars full of people? A classroom full of desks full of supplies? A fashion show with multiple runways featuring multiple models? Build something that will use a mix of hashes and arrays.
calendar = {
	year: 2016,
	months: {
		january: {
			name: "January",
			number: 1,
			days: (1..31).to_a,
			first_day: "Friday"
		},
		february: {
			name: "February",
			number: 2,
			days: (1..29).to_a,
			first_day: "Monday"
		},
		march: {
			name: "March",
			number: 3,
			days: (1..31).to_a,
			first_day: "Tuesday"
		},
		april: {
			name: "April",
			number: 4,
			days: (1..30).to_a,
			first_day: "Friday"
		}, 
		may: {
			name: "May",
			number: 5,
			days: (1..31).to_a,
			first_day: "Sunday"
		}, 
		june: {
			name: "June",
			number: 6,
			days: (1..30).to_a,
			first_day: "Wednesday"
		}, 
		july: {
			name: "July",
			number: 7,
			days: (1..31).to_a,
			first_day: "Friday"
		}, 
		august: {
			name: "August",
			number: 8,
			days: (1..31).to_a,
			first_day: "Monday"
		}, 
		september: {
			name: "September",
			number: 9,
			days: (1..30).to_a,
			first_day: "Thursday"
		}, 
		october: {
			name: "October",
			number: 10,
			days: (1..31).to_a,
			first_day: "Saturday"
		}, 
		november: {
			name: "November",
			number: 11,
			days: (1..30).to_a,
			first_day: "Tuesday"
		},  
		december: {
			name: "December",
			number: 12,
			days: (1..31).to_a,
			first_day: "Thursday"
		}
	}  
}

puts "#{calendar[:months][:april][:name]} is month number #{calendar[:months][:april][:number]}."
puts "My birthday is #{calendar[:months][:august][:name]} #{calendar[:months][:august][:days][2]}."
puts "The year #{calendar[:year]} starts on #{calendar[:months][:january][:first_day]}, #{calendar[:months][:january][:name]} #{calendar[:months][:january][:days][0]}."
