class Puppy

  def initialize
    puts "Initializing new puppy instance..."  
  end
  
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
    integer.times do 
      puts "Woof!"
    end
  end
  
  def roll_over
    puts "*rolls over*"
  end
  
  def dog_years(human_age)
    human_age*7
  end
  
  def shake_hands
    puts "*shakes paw*"
  end
  
end

spot = Puppy.new

spot.fetch("ball")
spot.speak(3)
spot.roll_over
p spot.dog_years(10)
spot.shake_hands

class Bear
  
  def initialize
    puts "*roars*"
  end
  
  def eat(food)
    puts "This #{food} is delicious."
  end
  
  def sleep
    puts "Sleeping.."
  end
  
  def hibernation(days)
    puts "Sleeping for #{days} days."
  end
  
end

bear_counter = 0
fluffy_bears = []

50.times do
  fluffy_bears << Bear.new
  bear_counter += 1
end

fluffy_bears.each do |bear|
  bear.eat("meat")
  bear.sleep
  bear.hibernation(2)
end