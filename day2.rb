# A magic number is a number whose digits, when added together, sum to 7. For example, the number 34 would be a magic number, because 3 + 4 = 7. Write a function that finds the first N many magic numbers.

# You'll want to write a helper function that checks whether a given number is a magic number.
# Reminder: you can convert an integer to a string using #to_s. You can convert a string back to an integer using #to_i.
def magic_numbers(count)
  result = []
  i = 0
  until result.length == count
    if is_magic_number?(i) == 7
      result << i
    end
    i += 1
  end
  return result
end

def is_magic_number?(number)
  num_split = number.to_s.split('')
  nums = num_split.collect { |num| num.to_i}
  return nums.inject(:+)
end

# Tests
puts "\nMagic numbers:\n" + "*" * 15 + "\n"
puts magic_numbers(1) == [7]
puts magic_numbers(3) == [7, 16, 25]
puts magic_numbers(20) == [7, 16, 25, 34, 43, 52, 61, 70, 106, 115, 124, 133, 142, 151, 160, 205, 214, 223, 232, 241]

# Write a function that takes in a number and sums all the numbers up to that number
def sum_to(number)
  sum = 0
  0.upto(number) do |num|
    sum += num
  end
  sum
end

  # Test - these should all print out true!
  puts "\nSum To:\n" + "*" * 15 + "\n"
  puts sum_to(5) == 15
  puts sum_to(3) == 6
  puts sum_to(1) == 1
  puts sum_to(0) == 0

# Write a function that takes in an amount of minutes and returns a time string formatted HH:MM
def time_conversion(minutes)
  hours_str = (minutes / 60).to_s
  min_str = (minutes % 60).to_s
  hours_str = "0" + hours_str if hours_str.length == 1
  min_str = "0" + min_str if min_str.length == 1
  return "#{hours_str}:#{min_str}"
end


# Test - these should all print true!
puts "\nTime Conversion:\n" + "*" * 15 + "\n"
puts time_conversion(30) == "00:30"
puts time_conversion(60) == "01:00"
puts time_conversion(90) == "01:30"
puts time_conversion(120) == "02:00"
puts time_conversion(10) == "00:10"
puts time_conversion(5) == "00:05"
puts time_conversion(0) == "00:00"

# Write a function that takes an array of pairs and returns the pair with the greatest sum
def largest_pair(pair_array)
  greatest = []
  pair_array.each do |pair|
    if greatest.empty? || pair[0] + pair[1] > greatest[0] + greatest[1]
      greatest = pair
    end
  end
  greatest
end


#Tests - Get all these to print true
puts "\nLargest Pair:\n" + "*" * 15 + "\n"
puts largest_pair([[1,0]]) == [1,0]
puts largest_pair([[1,0],[1,1],[1,2]]) == [1,2]
puts largest_pair([[-4,0],[-2,-1],[-3,2]]) == [-3,2]
