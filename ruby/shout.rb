module Shout
  # def self.yell_angrily(words)
  #   words + "!!!" + ":("
  # end

  # def self.yelling_happily(words)
  #   words + " " + "wahoo!" + ":)"
  # end

  def yell(words)
    puts "#{words} !!!"
  end

  def sing(words)
    puts "You know you make me wanna #{words}!"
  end

end

class Isley_Brothers
  include Shout
end

class Lil_Jon
  include Shout
end

# p Shout.yell_angrily("crap")
# p Shout.yelling_happily("yesss")

bro_1 = Isley_Brothers.new
bro_1.sing("shout")

lil_jon_1 = Lil_Jon.new
lil_jon_1.yell("OK")
