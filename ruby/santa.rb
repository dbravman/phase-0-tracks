class Santa
	attr_reader :gender, :ethnicity
	attr_accessor :age

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
		@reindeer_ranking = [:Rudolph, :Dasher, :Dancer, :Prancer, :Vixen, :Comet, :Cupid, :Donner, :Blitzen]
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

# release2/3 driver code
santa = Santa.new("male", "white")
p santa
santa.celebrate_birthday
santa.get_mad_at(:Rudolph)
santa.get_mad_at(:Vixen)
p santa