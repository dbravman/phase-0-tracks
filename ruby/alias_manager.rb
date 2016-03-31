def build_alias_name(name)
# swap first and last names
	alias_name = swap_names(name)
# change each vowel to next vowel and each consonant to next consonant. spaces and punctuation do not change
	alias_name = alias_name.chars
	alias_name.map! do |letter| 
		next_letter(letter)
	end
	alias_name.join
end

# swap first and last names
def swap_names(real_name)
# 	split string by words
	swapped_name = real_name.split(" ")
# 	reverse order of array
	swapped_name.reverse!
#	rejoin reversed string
	swapped_name.join(" ")
end

# change letter to next letter
def next_letter(letter)
	vowels = "aeiou"
	consonants = "bcdfghjklmnpqrstvwxyz"
	possible_codekeys = [vowels, consonants, vowels.upcase, consonants.upcase]
# assign codekey based on if letter is a vowel/consonant, upcase/downcase, or none
	codekey = nil
	possible_codekeys.each do |letter_set|
		if letter_set.include?(letter)
			codekey = letter_set
		end
	end
# if not a consonant or vowel, then keep it the same
	if codekey == nil
		return letter
	else
# if is a consonant or vowel, increase index of the codekey
		index = codekey.index(letter) + 1
# 		check exception if at the end (u/U or z/Z)
		if index == codekey.length
			index = 0
		end
	# return the new letter
		return codekey[index]
	end
end

# Use a data structure to store the fake names as they are entered. 
aliases = {}
puts "Enter a name:"
name = gets.chomp
# Let the user do this repeatedly until they decide to quit by typing 'quit'. (They might just hit Enter to continue.)
until name == "quit" || name == ""
	aliases[name] = build_alias_name(name)
	puts "#{name} => #{aliases[name]}.\nEnter another name or type 'quit' to exit:"
	name = gets.chomp
end

# When the user exits the program, iterate through the data structure and print all of the data the user entered.
aliases.each do |name, fakename|
	puts "#{fakename} is actually #{name}."
end