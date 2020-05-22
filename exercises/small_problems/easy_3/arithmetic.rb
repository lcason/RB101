# SMALL PROBLEMS - EASY 1 - ARITHMETIC

=begin
==================================================

PROBLEM:
Write a program that prompts the user for two positive integers,
and then prints the results of the following operations on those
two numbers: addition, subtraction, product, quotient, remainder,
and power. Do not worry about validating the input.

MENTAL MODEL:

INPUT:

OUTPUT:

EDGE CASES:

ASSUMPTIONS:

QUESTIONS:

PSEUDO:

==================================================
EVALUATION

==================================================
=end

puts "==> Enter the first number: "
num1 = gets.chomp.to_i
puts "==> Enter the second number:"
num2 = gets.chomp.to_i
operators =  ['-', '+', '*', '/', '**', '%']

operators.each do |op| 
  print "==> #{num1} #{op} #{num2} = "
  puts eval " #{num1} #{op} #{num2} " 
end 
 