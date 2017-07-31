class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
    number.times do
      puts "woof"
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(number)
    p number*7
  end

  def eat(food)
    puts "I ate the #{food}! Gimme more"
  end


end

fido = Puppy.new
fido.fetch("ball")

fido.speak(5)
fido.roll_over
fido.dog_years(4)
fido.eat("kibble")

