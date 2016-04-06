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
	# IF demeanor is happy, THEN output text
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

# user interface
def user_interface
#•Your user should be allowed to create as many instances of your class as they like.
	dragons = []
	finished = false
	until finished == true

#•Prompt the user for each attribute, and don't forget to convert their input to the appropriate data type. 
		puts "What is this dragon's name?"
		name = gets.chomp
		puts "How old is this dragon?"
		age = gets.chomp.to_i
		puts "What is this dragon's demeanor?"
		demeanor = gets.chomp
		
	#Store these class instances in an array.
		dragon = Dragon.new(name)
		dragon.age = age
		dragon.demeanor = demeanor
		dragons << dragon

		puts "Create another dragon? (y/n)"
		finished = case gets.chomp
			when "y" then false
			when "n" then true
		end
	end

#•When the user indicates that they are finished creating instances, loop through the array and print out the attributes of each instance as a confirmation message of what was created
	dragons.each do |dragon| 
		puts "#{dragon.name} is a #{dragon.age} year-old dragon who is feeling #{dragon.demeanor}."
	end
end

user_interface