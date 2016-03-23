def YNConvert input 
	return case input
		when "y", "Y" then true
		when "n", "N" then false
		else nil
	end
end

puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp
puts "What year were you born?"
year = gets.chomp
puts "Our company cafeteria serves garlic bread.  Should we order some for you?"
garlicbread = YNConvert gets.chomp
puts "Would you like to enroll in the company's health insurance? (Y/N)"
insurance = YNConvert gets.chomp