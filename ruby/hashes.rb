#methods to get client data
#age, number of children, and referral need to be converted to a different data type
def get_name
	puts "What is the client's name?"
	gets.chomp
end

def get_age
	puts "What is the client's age?"
	#convert to boolean
	gets.chomp.to_i
end

def get_children
	puts "How many children does the client have?"
	#convert to integer
	gets.chomp.to_i
end

def get_theme
	puts "What is the decor theme?"
	gets.chomp
end

def get_referral
	puts "Was the client referred? (y/n)"
	referral = gets.chomp
	#convert to boolean
	if referral == "y"
		return true
	else
		return false
	end
end

#create an empty hash for the client
client = {}

#prompt user for information and store in the hash
client[:name] = get_name
client[:age] = get_age
client[:children] = get_children
client[:theme] = get_theme
client[:referral] = get_referral

# print the hash to the screen
p client

# ask user which key to change
puts "Which key (or none) would you like to change?"
what_to_change = gets.chomp

#if "none", then skip to the end
if what_to_change != "none"
	#otherwise, convert the choice to a key
	key_to_change = what_to_change.to_sym
	#redo the input for whichever key the user chose 
	client[key_to_change] = case key_to_change
		when :name then get_name
		when :age then get_age
		when :children then get_children
		when :theme then get_theme
		when :referral then get_referral
		#assume that the user will correctly input a key that exists
		else nil
	end
end

# print the updated hash to the screen
p client