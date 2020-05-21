# SMALL PROBLEMS - EASY 1 - ODD

=begin
==================================================
PROBLEM:
Write a method that takes one integer argument,
 which may be positive, negative, or zero. This method
  returns true if the number's absolute value is odd. 
  You may assume that the argument is a valid integer value.

MENTAL MODEL:
take the integer, 

INPUT:
- integer

OUTPUT:
- boolean for absolute value of number being odd

EDGE CASES:
?

ASSUMPTIONS:
input is a valid integer value 

PSEUDO:

if the number is divisble by 2, return false

==================================================
EVALUATION

==================================================
=end

def is_odd?(num)
  num % 2 != 0
end 


# Tests
=begin
puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)
puts is_odd?(7)
=end 