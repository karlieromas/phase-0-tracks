#RELEASE 0

def drinks
  drink1 = "pina colada"
  drink2 = "cosmo"
  puts "What is your favorite cocktail?"
  yield(drink1, drink2)
end

drinks{|drink1, drink2| puts "#{drink1} is delicious on vacation! #{drink2} is so Sex and the City!"}

#RELEASE 1

cocktails = [
  "pina colada",
  "cosmo",
  "beer",
  "wine",
  "vodka"
]
p cocktails

states = {
  Illinois: "Springfield",
  New_York: "Albany",
  Michigan: "Lansing",
  New_Jersey: "Trenton",
  California: "Sacramento"
}
p states

cocktails.each {|x| puts " My favorite drink is #{x}!"}

cocktails.map! do |x|
  x.upcase
end
p cocktails

states.each do |state, capital|
  puts " I love visiting #{capital}, #{state}!"
end


