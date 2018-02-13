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
