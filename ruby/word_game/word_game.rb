# create a game class (we'll call it Hangman)
# takes in a word as a parameter from one user
# another user will attempt to guess the word that is entered
# total number of guesses allowed is the number of characters in that word that was entered (the length of the word)
# however, repeated guesses are not counted against you
# once the second user guesses a letter, the current state of the word is printed to the screen so they can see their progress
# send a congrats message to the user once they figure out the word

class Hangman
  attr_reader :letters_guessed, :is_over

  def initialize(word)
    @word = word
    @letters_guessed = []
    @is_over = false
  end

  def word_array
    @word.split('')
  end

  def print_result
    result = word_array.map do |letter|
      if @letters_guessed.include?(letter)
        letter
      else
        '-'
      end
    end
    puts result.join
  end

def check_letter(letter)
  @letters_guessed << letter
  if @word.include?(letter)
    puts "Yay! You got a letter!"
  else
    puts "Sorry, that letter is not in this word. Try again."
  end
end

def end_game
  @is_over = true
end

def won?
  @word.split('').all? do |letter|
    @letters_guessed.include?(letter)
  end
end



end

puts "Hello! Welcome to Hangman. Please enter a word:"
user_word = gets.chomp.downcase
game = Hangman.new(user_word)
game.print_result

until game.is_over
  puts "Great! Player 2, you can guess a letter!"
  user_guess = gets.chomp.downcase
  game.check_letter(user_guess)
  game.print_result
  if game.letters_guessed.length == user_word.length
    puts "Sorry, max guesses have been hit. Try again with a new word."
    game.end_game
  end
  if game.won?
    puts "Congrats! You won!"
    game.end_game
  end
end