#release1
# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yell_happily(words)
# 		words + "!!" + " :)"
# 	end
# end

# #driver code
# puts Shout.yell_angrily("Seriously")
# puts Shout.yell_happily("Seriously")

#release3
module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yell_happily(words)
		words + "!!!" + " :)"
	end
end

class Taxi_hailer
	include Shout
end

class Sports_fan
	include Shout
end

#driver code
t = Taxi_hailer.new
s = Sports_fan.new
puts t.yell_angrily("That's my cab")
puts t.yell_happily("That's my cab")
puts s.yell_angrily("What just happened")
puts s.yell_happily("What just happened")