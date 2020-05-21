# SMALL PROBLEMS - EASY 1 - ARRAY AVERAGE

=begin
==================================================

PROBLEM:
Write a method that takes one argument, an array containing
integers, and returns the average of all numbers in the
array. The array will never be empty and the numbers will
always be positive integers.

MENTAL MODEL:
add up all the integers in the array, and then divide by
the length of the array and return the number.

INPUT: array of integers

OUTPUT: float, average of all ints.

ASSUMPTIONS:
-all integers are positive
-the array will never be empty
-you should return an integer.

==================================================
EVALUATION

==================================================
=end

def average(array)
  array.sum / array.length
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
