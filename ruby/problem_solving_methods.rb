# Release 0

array = [45, 87, 54, 90, 24]

def search_array(array,i)
  is_included = array.include?(i)
  if is_included
    array.each_with_index do |number, index|
      if i == number
        p index
      end
    end
      else
        p nil
  end
end

search_array(array, 90)
search_array(array, 65)
search_array(array, 54)

# Release 1

  # create an array of numbers
  # add the last two numbers in the array together by calling their indeces and declaring a variable
  # add that variable to the array
  # take a number of fibonacci terms
  # the new variable of last two numbers added will be at the -1 index
  # break if the number taken (argument) is reached

def fibonacci(number)
  array = [0, 1]
  until array.length == number
    array << array[-1] + array [-2]
  end
  p array
end

fibonacci(20)
fibonacci(100)

# Release 2

  # method takes an array of integers
  # sorts those integers
  # return the sorted version of those integers in an array

  # write an initial array
  array = [3, 9, 3, 0, 4, 5]
  # write expected sorted array
  expected_sorted_array = [0, 3, 3, 4, 5, 9]
  # take the totla number of elements or numbers in the array
  # create a new variable for swapping and make that equal to false
  # take total number of elements - 1
  # need a loop to iterate through each number in the array
  # compare each number in the initial array to previous number in that array (< or >)
  # if the amount is >, swap the element (number) order with the other that was compared
  # the loop will break
  # print new expected array

array = [3, 9, 3, 0, 4, 5]
def bubble_sort(array)
    n = array.length
    loop do
    swapping = false
    (n-1).times do |i|
        if array[i] > array [i + 1]
          array[i], array[i + 1] = array [i + 1],
          array[i]
          swapping = true
        end
      end
      break if not swapping
    end
    p array
end

bubble_sort(array)


