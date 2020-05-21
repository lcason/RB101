# SMALL PROBLEMS - EASY 1 - REPEAT YOURSELF

=begin
==================================================
PROBLEM:
Write a method that takes two arguments,
a string and a positive integer, and prints the
string as many times as the integer indicates.

INPUT:
- string
-positive integer

OUTPUT:
string x times

EDGE CASES:
empty string?
0?

ASSUMPTIONS:
user input an actual string
user inputs a valid, positive integer

PSEUDO:
GETS string
GETS times

PRINT string,  positive integer number of times
==================================================
EVALUATION

I misread the prompt, and so, overcomplicated the
problem. it wanted a method that accepted those
arguments, not a program that got user input. Remember
to read the problem more carefully.

==================================================
=end

number_of_times = nil

def valid_number?(num)
  num.to_i.to_s == num && num.to_i > 0
end


puts 'What is your sentence?'
sentence = gets.chomp

loop do
  puts 'How many times would you like it to print?'
  number_of_times = gets.chomp
  break if valid_number?(number_of_times)
  puts 'Invalid number. Please enter a positive integer'
end

number_of_times.to_i.times { puts sentence }
