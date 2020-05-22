# SMALL PROBLEMS - EASY 2 - STRING ASSIGNMENT

=begin
==================================================

PROBLEM:
Write a program that asks the user to enter an integer greater than 0,
then asks if the user wants to determine the sum or product of all
 numbers between 1 and the entered integer.

==================================================
=end

# what will the following code print, and why? 
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

Moe
Larry
CURLY
SHEMP
Harpo
CHICO
Groucho
Zeppo