# SMALL PROBLEMS - EASY 3 - SEARCHING 101

=begin
==================================================
PROBLEM:
Write a program that solicits 6 numbers from the user,
then prints a message that describes whether or not the
6th number appears amongst the first 5 numbers.

MENTAL MODEL:
get 5 numbers from the user, get a 6th number from the user,
check if that ast number matches any of the first 5, if it does,
print one message, if it doesnt, print another

INPUT: 6 numbers

OUTPUT: printed message, number is in first 4 y/n

EDGE CASES:

ASSUMPTIONS:

QUESTIONS:
-assume all numbers are integers?
-assume all numbers are positive?
-check that input is valid?

DATA:
array

PSEUDO:

==================================================
EVALUATION

why does the case statement need to be inside the loop?

==================================================
=end

numbers = []

loop do
  iteration = case numbers.size
              when 0 then "1st"
              when 1 then "2nd"
              when 2 then "3rd"
              when 3 then "4th"
              when 4 then "5th"
              when 5 then "6th"
              end
  puts "==> Enter the #{iteration} number: "
  number = gets.chomp
  numbers << number
  break if numbers.size == 5
end

puts '==> Enter the last number:'
last_number = gets.chomp

if numbers.include?(last_number)
  puts " The number #{last_number} appears in #{numbers}"
else
  puts " The number #{last_number} does not appear in #{numbers}"
end
