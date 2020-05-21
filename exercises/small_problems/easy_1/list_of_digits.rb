# SMALL PROBLEMS - EASY 1 - LIST OF DIGITS

=begin
==================================================
PROBLEM:
Write a method that takes one argument, a positive integer,
and returns a list of the digits in the number.

MENTAL MODEL:

INPUT:
-positive integer

OUTPUT:
-list of digits

EDGE CASES:

ASSUMPTIONS:
input is a positive integer
==================================================
EVALUATION
checking the ruby documentation before starting revealed 
a method exists for getting the digits from an integer, 
it just needed to be reversed.
==================================================
=end

def digit_list(num)
  num.digits.reverse
end 

# Tests
puts digit_list(12_345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                      # => true
puts digit_list(375_290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]              # => true
