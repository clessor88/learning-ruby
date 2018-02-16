# Write a function that returns a phrase with each word (separated by spaces) capitalized.
def capitalize_each_word(phrase)
  words = phrase.split(' ')
  words.map do |word|
    word[0] = word[0].capitalize
  end
  return words.join(' ')
end

#Get these to true!!
puts "\nCapitalize:\n" + "*" * 15 + "\n"
puts capitalize_each_word("abc") == "Abc"
puts capitalize_each_word("lets go dubs") == "Lets Go Dubs"
puts capitalize_each_word("CODE IS LIFE") == "CODE IS LIFE"
dont_change_this = "do not mutate me"
capitalize_each_word(dont_change_this)
puts dont_change_this == "do not mutate me"

# *********************************************

# Write a boolean function that returns true if an array of numbers has any multiples of 3.
def has_multiple_of_three?(numbers)

	numbers.any? { |num| num % 3 == 0 }

end

#Tests - More trues
puts "\nHas multiples of three:\n" + "*" * 15 + "\n"
puts has_multiple_of_three?([1]) == false
puts has_multiple_of_three?([3]) == true
puts has_multiple_of_three?([1,2,4,5,7,8]) == false
puts has_multiple_of_three?([1,2,4,5,6,7,12]) == true

# *********************************************

#If you didn't use enumerable any? in has_multiple_of_three? write is again using any?

# *********************************************

# Write a function that take an array of numbers and returns a hash of the number of even numbers and of odd numbers.


def evens_and_odds(numbers)
  even_odd = {"even" => 0, "odd" => 0}
  numbers.each do |number|
    number % 2 == 0 ? even_odd["even"] += 1 : even_odd["odd"] +=1
  end
  even_odd
end

#Test - Get these all true, look at the format of the return value
puts "\nEvens and odds:\n" + "*" * 15 + "\n"
puts evens_and_odds([1,3])['even'] ==  0
puts evens_and_odds([1,3])['odd'] ==  2

puts evens_and_odds([2,4])['even'] == 2
puts evens_and_odds([2,4])['odd'] == 0

puts evens_and_odds([]) == {'even' => 0, 'odd' => 0}
puts evens_and_odds([1,2,3]) == {'even' => 1, 'odd' => 2}
# *********************************************

# Write a function that takes in a word and returns the counts of each letter in that word.
def letter_counts(word)
#   letter_count = {}
#   letters = word.split('')
#   letters.each do |letter|
#     if letter_count[letter]
#       letter_count[letter] += 1
#     else
#       letter_count[letter] = 1
#     end
#   end
#   letter_count
# end
  splitted = word.split("")
  count = Hash.new 0
  splitted.each { |letter| count[letter] += 1 }
  count
end

# Tests must all print true
puts "\nLetter Counts:\n" + "*" * 15 + "\n"
puts letter_counts("hi") == { 'h' => 1, 'i' => 1 }
puts letter_counts("hello") == { 'h' => 1, 'e' => 1 , 'l' => 2, 'o' => 1}

# *********************************************

# Take a moment and refactor your previous code to make it look sexy and use good coding style!

# *********************************************

# Write a boolean function palindrome? which takes in a word and returns true if it is palindrome.
def palindrome?(string)
  string == string.reverse
  # return true if string.length == 1
  # fold = string.length / 2
  # fold.times do |i|
  #   return false unless string[i] == string[string.length -1 -i]
  # end
  # true
end
#Tests
puts "\nPalindrome:\n" + "*" * 15 + "\n"
puts palindrome?("a") == true
puts palindrome?("aa") == true
puts palindrome?("ab") == false
puts palindrome?("racecar") == true
puts palindrome?("coder") == false
# *********************************************
