puts "What is the hamsters name?"
name = gets.chomp 
puts "What is the volume level from 1 to 10?"
volume = gets.chomp.to_i
puts "What is the fur color?"
fur = gets.chomp
puts "Is the hamster a good candidate for adoption? (Y/N)"
adoption = gets.chomp
   if adoption == "Y"
       adoption = true
   else
       adoption = false
   end
puts "What is the estimated age?"
age = gets.chomp
 if age == ""
     age = nil
     puts "Age is nil!"
 else
     age = age.to_i
     puts "Age is not nil"
 end
puts age

puts "Your hamster's name is #{name}. #{name} is at a #{volume} volume level. #{name}'s fur is #{fur} and it is #{adoption} that #{name}'s a good candidate for adoption."
 if age.nil?
      puts "#{name}'s age is unknown"
 else
      puts "#{name}'s estimated age is #{age}"
 end