# Virus Predictor

# I worked on this challenge [by myself, with: Davina Pasiewicz ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# ability to pull and use information in a different file in the current file you are working on. Similar to linking a CSS file to an HTML file.
# require actually requires more information on where a certain file is located. Unlike require relative, it is not in the same directory so it will need more direction on where to go.
require_relative 'state_data'

class VirusPredictor
  # creating new instance variables of each state. takes in the state of origin, population density and population as parameters.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # calling the two methods predicted deaths and speed of spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # as one of the state's data is satisfied by one of these conditions, it will perform the calculation to determine the number of deaths based on the state's population density and population. it's output is the state followed by the number of deaths (integer) in that outbreak.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      multiplier = 0.4
    elsif @population_density >= 150
      multiplier = 0.3
    elsif @population_density >= 100
      multiplier = 0.2
    elsif @population_density >= 50
      multiplier = 0.1
    else
      multiplier = 0.05
    end
  number_of_deaths = (@population * multiplier).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # similar to the predicted deaths method, as it goes through the state's data that we give it, until it meets a certain condition it will perform the calculation for speed based on the population density. the output gives us the speed in months on the outbreak.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

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
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, data|
  s = VirusPredictor.new(state, data[:population_density], data[:population])
  s.virus_effects
end




#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
    # The two different hash syntaxes we see here are the hash rocket (=>) and the symbol (:). We use the hash rocket here with a string and we use the symbol notation when we are working with integers.
# What does require_relative do? How is it different from require?
    # require_relative is a Ruby built-in that allows you to use information from another file. Similar to when you link a CSS file to an HTML file.'Require' actually requires more information to know exactly where a certain file can be found. For example, adding ./ to see it's exact path on where it's coming from.
# What are some ways to iterate through a hash?
    # You are able to iterate through a hash using a loop or using .each with a do statement. I opted to use the .each with a do statement in order to navigate to the data (population density and population in the values).
# When refactoring virus_effects, what stood out to you about the variables, if anything?
    # When refactoring virus_effects, I learned that if we already have the variables given to us through the other methods, then there is no need to have them set as parameters. You only need to give a method parameters if they have no way of finding out that information on their own. Since we are giving it already, we don't need them.
# What concept did you most solidify in this challenge?
    # This challenge was a good refresher on scope and when you can access certain variables and when you can't. I also learned about conditionals and how it's helpful to use one variable. Also how to make them so that they are known.