class Santa
	attr_reader :gender, :ethnicity
	attr_accessor :age, :reindeer_ranking

	def speak
		puts "Ho, ho, ho!  Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking << reindeer
	end

	# #getter methods
	# def gender
	# 	@gender
	# end

	# def ethnicity
	# 	@ethnicity
	# end
end

# #release0 driver code
# santa = Santa.new
# santa.speak
# santa.eat_milk_and_cookies("sugar cookie")

# #release1 driver code
# santas = []
# santas << Santa.new("male", "middle eastern")
# santas << Santa.new("male", "white")
# santas << Santa.new("female", "mixed race")
# santas << Santa.new("female", "asian")
# p santas

# # release2/3 driver code
# santa = Santa.new("male", "white")
# p santa
# santa.celebrate_birthday
# santa.get_mad_at("Rudolph")
# santa.get_mad_at("Vixen")
# p santa

# release 4 driver code
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

100.times do 
	#Use our array of example genders and an array of example ethnicities [...] to create your Santas with a randomly selected gender and a randomly selected ethnicity.
	ethnicity = example_ethnicities.sample
	gender = example_genders.sample
	santa = Santa.new(gender, ethnicity)
	
	#Set your new Santa's age to a random number between 0 and 140.
	santa.age = rand(141)
	
	#No need to store your Santas in a data structure, but your program should print out the attributes of each Santa using the instance methods that give you access to that data.
	puts "Santa is a #{santa.age}-year old #{santa.ethnicity} #{santa.gender}, who prefers the reindeer in this order: #{santa.reindeer_ranking}."
end