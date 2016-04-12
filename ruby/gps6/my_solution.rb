# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
#require_relative 'state_data'

class VirusPredictor

#assigns instances variables to new instance of class.  Defines the parameters for an instance of the class.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#calls predicted_deaths and speed_of_spread.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  
  #calculates number_of_death using instance variables and prints text with that information.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

#calculates the speed of spread and prints that information as text.  
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    #speed = 0.0

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
STATE_DATA.each_key do |state|
  virus_predictor = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  virus_predictor.virus_effects
end



# initialize VirusPredictor for each state
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = Predictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# •What are the differences between the two different hash syntaxes shown in the state_data file?
#Hash rockets are used with string keys.  Colons are used with symbols.

# •What does require_relative do? How is it different from require?
#require_relative merges in the file.  require_relative differs from require by giving a relative path instead of an absolute path.

# •What are some ways to iterate through a hash?
#.each

# •When refactoring virus_effects, what stood out to you about the variables, if anything?
#The parameters weren't used by the methods.  Moreover, since they are instance variables, they don't need to be passed as parameters to the class methods. 

# •What concept did you most solidify in this challenge?
#Types of variables.