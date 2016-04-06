# Fire-breathing dragon
class Dragon

# ATTRIBUTES:
# name
# age
# demeanor
	attr_reader :name
	attr_accessor :age, :demeanor 
#
# METHODS:
# initialize(name)
	# name is supplied
	# age is default a random number
	# demeanor is default happy
	def initialize(name)
		@name = name
		@age = 1 + rand(50)
		@demeanor = "happy"
	end

# breathe_fire
	# output text
	def breathe_fire
		puts "WHOOOOOOMPH! *sizzle*"
	end

# fly
	# output text
	def fly
		puts "swoooosh! *flaps*"
	end

# meet_hero(demeanor)
	def meet_hero(demeanor)
	# IF demeanor is happy, output text
		if @demeanor == "happy"
			puts "Heya!  I'm a dragon!"
	# ELSIF demeanor is angry, THEN breath_fire!
		elsif @demeanor == "angry"
			breathe_fire
	# ELSE fly
		else
			fly
		end
	end
end