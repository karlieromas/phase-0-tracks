class Santa

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    puts "Initializing Santa instance. I am a #{@ethnicity} #{@gender}."
    @age = 0
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

  def speak
    puts "Ho, ho, ho! Haaaaapy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
  end


end

santas = []

santas << santa_1 = Santa.new("female", "white")
# santa_1.speak
# santa_1.eat_milk_and_cookies("chocolate chip")

santas << santa_2 = Santa.new("male", "hispanic")

santas << santa_3 = Santa.new("bigender", "white")

p santas