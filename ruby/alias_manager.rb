# Release 0

# define a method that takes in a spy's real name (a string)
# create a name variable
# we must take that variable (name) and make it into an array of words and save as a variable
# call .reverse method on the new array so that the first and last name are swapped
# now that we have an array of two elements we can call .split('')
# change vowels to the 'next' vowel
# change consonants to the 'next' consonant

# in order to find out which vowel is next, we need to make an array of vowels so that we can find the index that vowel is at and iterate through the array to find the next vowel


name = "Felicia Torres"
name.split

def name_changer(name)
  vowels = ["a", "e", "i", "o", "u"]
  new_name = name.split(' ').map do |name|
    new_letter = name.split('').map do |letter|
      is_vowel = vowels.include?(letter.downcase)
      if is_vowel
        index = vowels.index(letter.downcase)
        vowels.rotate[index]
      else
        next_letter = letter.next
        unless vowels.include?(next_letter.downcase)
        next_letter
      else
        next_letter.next
      end
    end
  end
  new_letter.join
end
new_name.reverse.join(' ')
end

name_changer("Felicia Torres")

