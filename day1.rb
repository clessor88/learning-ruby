#FUNCTIONS
  # Write a function called hello_world that will put the string "Hello world!" on the screen.
  def hello_world
    puts "Hello world!"
  end
  hello_world

  # Write a function called print_thrice(number), that, given a number three times.
  def print_thrice(number)
    3.times do
      puts number
    end
  end
  print_thrice(4)
  # Write a function called print_thrice_thrice(number) that, given a number, will call print_thrice with that number three times.
  def print_thrice_thrice(number)
    3.times do
      print_thrice(number)
    end
  end
  print_thrice_thrice(4)
#NUMBERS
  # Write a function called times_three_and_plus_five(number) that takes a number, multiplies it by 3, and then adds 5.
  def times_three_and_plus_five(number)
    number * 3 + 5
  end
  puts times_three_and_plus_five(4)
  # Write a function called even_or_odd(number) that prints "even" if the number is even, and prints "odd" if the number is odd.
  def even_or_odd(number)
    number % 2 == 0 ? (puts "even") : (puts "odd")
  end
  even_or_odd(20)
  even_or_odd(15)
  # Write a function called division_plus_remainder(big_number, small_number) that finds the number of times small_number completely divides into big_number, then ads the remainder that's left over.
  def division_plus_remainder(big_number, small_number)
    (big_number / small_number) + (big_number % small_number)
  end
  puts division_plus_remainder(7, 2)
  # Write a function called is_factor_of(big_number, small_number) that returns true if small_number is a factor of big_number, and false if it is not.
  def is_factor_of(big_number, small_number)
    if big_number % small_number == 0
      return true
    else
      return false
    end
  end
  puts is_factor_of(81, 9)
  puts is_factor_of(93, 13)
#BOOLEANS and LOOPS
  #Write a while loop that prints out all the numbers from 1 to 25 inclusive.
  def one_to_twenty_five
    current_number = 1
    while current_number <= 25
      puts current_number
      current_number += 1
    end
  end
  one_to_twenty_five
  # Write a function called print_up_to(number) that given a number, prints out allthe numbers from one to that number, inclusive. it should use a while loop internally.
  def print_up_to(number)
    current_number = 1
    while current_number <= number
      puts current_number
      current_number += 1
    end
  end
  print_up_to(10)
  # Write a function called print_factors(number) that prints all of the factors of a number, including 1 and the number itself.
  #Hint: use your is_factor_of(big_number, small_number)function.
  def print_factors(number)
    current_number = 1
    while current_number <= number
      puts current_number if is_factor_of(number, current_number)
      current_number += 1
    end
  end
  print_factors(25)
#PROBLEM SETS
  #Write a function that given an array returns another array with each of the numbers multiplied by two. Don't change the original array.
  def array_times_two(array)
    new_array = array.map{ |el| el * 2}
  end
  #Tests - these should all spit out true!
  puts "\nArray times two: \n"
  puts array_times_two([1, 2, 3]) == [2, 4, 6]
  puts array_times_two([0, -1, -2]) == [0, -2, -4]
  dont_change_this = [3, 4, 5]
  array_times_two(dont_change_this)
  puts dont_change_this == [3, 4, 5]
  #write a function that given an array, now CHANGES each of the numbers to be twice as big. This should mutate the original array!
  def array_times_two!(array)
    array.map!{ |el| el *2}
  end

  #Tests
  puts "\n Array times two!:\n"
  puts array_times_two!([1, 2, 3]) == [2, 4, 6]
  change_this = [6, 7, 8]
  array_times_two!(change_this)
  puts change_this == [12, 14, 16]

  #Write a function that given an array, returns another array of only unique elements. I.E. return a version without duplicates.
  def uniq(array)
    unique_values = []
    array.each do |el|
      unless unique_values.include?(el)
        unique_values << el
      end
    end
    unique_values
  end

  #Tests
  puts "\n Unique arrays:\n"
  puts uniq([5, 5, 5, 5]) == [5]
  puts uniq([1]) == [1]
  puts uniq([1, 2, 1, 3, 3]) == [1, 2, 3]

  # A Slippery number is a number that has 3 as a factor or has 5 as a favtor, but does NOT have both as factors. For example 6 is a Slippery Number, but 30 is not. Write a function that given an N, returns an array of the first N Slippery numbers.

  #You'll want to write a helper function that helps you determine which numbers are Slippery.

  def slippery_numbers(n)
    slippery_nums = []
    curr_num = 0
    while slippery_nums.length < n
      slippery_nums << curr_num if is_slippery?(curr_num)
      curr_num += 1
    end
    slippery_nums
  end

  def is_slippery?(number)
    # return false if (number % 3 == 0 && number % 5 == 0) || (number % 3 != 0 && number % 5 != 0)
    # true
    return ((number % 3 == 0) ^ (number % 5 == 0))
  end

  #Tests
  puts "\n Slippery Numbers: \n"
  puts slippery_numbers(1) == [3]
  puts slippery_numbers(2) == [3, 5]
  puts slippery_numbers(7) == [3, 5, 6, 9, 10, 12, 18]

# Write a function that finds whether any two elements in the array sum to 0. If it does, return true; else, return false.

def two_sum_to_zero?(array)
  # len = array.length - 1
  # len.times do |i|
  #   (i + 1).upto(len) do |j|
  #     return true if array[i] + array[j] == 0
  #   end
  # end
  # false
  nums_hash = {}
  array.each do |el|
    return true if nums_hash[-(el)]
    nums_hash[el] = true
  end
  false
end

#Tests
puts "\n Two sum to zero?:\n"
puts two_sum_to_zero?([4, 2, 6]) == false
puts two_sum_to_zero?([-2, 5, 12, -3, 2]) == true
puts two_sum_to_zero?([0, 5]) == false
