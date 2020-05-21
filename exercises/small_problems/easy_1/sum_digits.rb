# SMALL PROBLEMS - EASY 1 - SUM OF DIGITS

=begin
==================================================

PROBLEM:
Write a method that takes one argument, a positive integer,
and returns the sum of its digits.

MENTAL MODEL:

INPUT:
-positive integer

OUTPUT:
-integer, sum of digits

ASSUMPTIONS:

==================================================
EVALUATION

==================================================
=end

def sum(num)
  num.digits.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
