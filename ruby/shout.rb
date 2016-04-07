module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yell_happily(words)
		words + "!!" + " :)"
	end
end

#driver code
puts Shout.yell_angrily("Seriously")
puts Shout.yell_happily("Seriously")