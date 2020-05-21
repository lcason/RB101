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

I moved the file while working, and that meant the code
wasnt updating in the terminal. good to know for future reference,
don't (obviously) move things around in the middle of it!

==================================================
=end

def is_odd?(num)
  num.odd?
end

# Tests
puts odd?(2)
puts odd?(5)
puts odd?(-17)
puts odd?(-8)
puts odd?(0)
puts odd?(7)
