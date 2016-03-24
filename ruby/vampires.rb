# Convert a Y/N prompt into boolean T/F
def convertYNToTF input 
	return case input
		when "y", "Y" then true
		when "n", "N" then false
		else nil
	end
end

# Check whether an age matches the birthyear.
# Because birthday might not have happened yet in the current year, a range of ages is considered.
def checkAge birthyear, age
	return (age..age+1) === (Time.new.year - birthyear) 
end

# release 3
puts "How many employees will be processed?"
employeeNumber = gets.chomp.to_i

employeeNumber.times do

	# release 1
	puts "What is your name?"
	name = gets.chomp
	puts "How old are you?"
	age = gets.chomp.to_i
	puts "What year were you born?"
	year = gets.chomp.to_i
	puts "Our company cafeteria serves garlic bread.  Should we order some for you? (Y/N)"
	garlicbread = convertYNToTF gets.chomp
	puts "Would you like to enroll in the company's health insurance? (Y/N)"
	insurance = convertYNToTF gets.chomp

	# release 4
	allergy = nil
	while (allergy != "done" && allergy != "sunshine")
		puts "Name allerges, one at a time.  Type \"done\" when finished."
		allergy = gets.chomp
	end

	if allergy == "sunshine"
		puts "Probably a vampire."
		next
	end

	# release 2
	ageCorrect = checkAge year, age

	result = nil
	if ageCorrect && (garlicbread ^ insurance)
		result = "Probably not a vampire."
	elsif !ageCorrect && (!garlicbread ^ !insurance)
		result = "Probably a vampire."
	elsif !ageCorrect && (!garlicbread && !insurance)
		result = "Almost certainly a vampire."
	end

	if name == "Drake Cula" || name == "Tu Fang"
		result = "Definitely a vampire."
	end

	if result == nil 
		result = "Results inconclusive."
	end

	puts result
end

# release 5
puts "Actually, never mind!  What do these questions have to do with anything?  Let's all be friends."