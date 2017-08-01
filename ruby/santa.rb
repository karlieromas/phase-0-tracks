class Santa

attr_reader :age, :ethnicity
attr_accessor :gender

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

  def celebrate_birthday
    @age = @age + 1
    puts "I'm now #{@age} years old!"
  end

  def get_mad_at(reindeer_name)
    reindeer_index = @reindeer_ranking.index(reindeer_name)
    reindeer_found = @reindeer_ranking.delete_at(reindeer_index)
    @reindeer_ranking << reindeer_found
    puts @reindeer_ranking
  end

end

santas = []

santas << santa_1 = Santa.new("female", "white")
# santa_1.speak
# santa_1.eat_milk_and_cookies("chocolate chip")
santas << santa_2 = Santa.new("male", "hispanic")
santas << santa_3 = Santa.new("bigender", "white")

# shows that the santa's birthday is going up by 1 each year
santa_3.celebrate_birthday
santa_3.celebrate_birthday

# said reindeer gets moved to the last index of the array
santa_3.get_mad_at("Cupid")

# tests that we can retrive santa_1's age and ethnicity
p santa_1.age
p santa_1.ethnicity