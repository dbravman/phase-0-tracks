#Release0
puts "What is your name?"
name = gets.chomp
3.times {puts "#{name}"}
puts "We printed your name 3 times."


# Release 1
my_array = ["Danny", "Ben", "Sangmee", "Jennifer", "Theron"]

p my_array
my_array.each {|i| puts "they are at the table and their name is #{i}"}
p my_array

p my_array
my_array.map! {|i| i + "!"}
p my_array



my_hash = {
    startups: "Wednesday",
    wordpress: "Monday",
    asl: "Thursday",
    time_management: "Tuesday"

}

p my_hash
my_hash.each {|k, v| puts "we want just the value #{v}"}
p my_hash

#release2
array2 = [1, 2, 3, 4, 5]
hash2 = {
	a: 1,
	b: 2,
	c: 3,
	d: 4,
	e: 5
}
# A method that iterates through the items, deleting any that meet a certain condition 
p array2.delete_if {|i| i == 4}
p hash2.delete_if {|key,value| key == :d}

# A method that filters a data structure for only items that do satisfy a certain condition 
p array2.select {|i| i <= 3}
p hash2.select {|k, v| v <= 3}
p hash2.select {|k, v| k == :b}

#A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
p array2.drop_while {|i| i < 3}
p hash2.drop_while {|k,v| v < 3}

# A method that will remove items from a data structure until the condition in the block evaluates to true, then stops.
p array2.reject {|i| i <= 3}
p hash2.reject! { |k,v| v <= 3}