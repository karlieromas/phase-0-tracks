module Shout
  def self.yell_angrily(words)
    words + "!!!" + ":("
  end

  def self.yelling_happily(words)
    words + " " + "wahoo!" + ":)"
  end
end

p Shout.yell_angrily("crap")
p Shout.yelling_happily("yesss")
