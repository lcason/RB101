# SMALL PROBLEMS - EASY 6 - FIB NUMBER LOCATION BY LENGTH

=begin
==================================================

PROBLEM:
Write a method that calculates and returns the index of the first
Fibonacci number that has the number of digits specified as an argument.
(The first Fibonacci number has index 1.)

==================================================
EVALUATION

This solution bogs down at large number because you are creating a very 
large array.

==================================================
=end

def find_fibonacci_index_by_length(num)
  arr = [1]
  loop do 
    arr << arr.last(2).sum
    break if arr.last.to_s.length >= num 
  end 
  arr.length
end 




p find_fibonacci_index_by_length(2) #== 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) #== 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) #== 45
p find_fibonacci_index_by_length(100) #== 476
p find_fibonacci_index_by_length(1000) #== 4782
p find_fibonacci_index_by_length(10000) #== 47847