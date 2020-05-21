# SMALL PROBLEMS - EASY 2 - SUM OR PRODUCT OF CONSECUTIVE INTEGERS

=begin
==================================================

PROBLEM:
Write a program that asks the user to enter an integer greater than 0,
then asks if the user wants to determine the sum or product of all
 numbers between 1 and the entered integer.

==================================================
=end

puts 'Please enter an integer greater than 0:'
num = gets.to_i

puts " Enter 's' to compute the sum, 'p to compete the product."
input = gets.chomp

sum = (1..num).reduce(:+)
product = (1..num).reduce(:*)

case input
when 's' then puts "The sum of the integers between 1 and #{num} is #{sum}."
when 'p' then puts "The product of the integers between 1 and #{num} is #{product}."
else puts 'Invalid input.'
end
