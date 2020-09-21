# SMALL PROBLEMS - EASY 4 - MULTIPLES OF 3 AND 5

=begin
==================================================

PROBLEM:
Write a method that searches for all multiples
of 3 or 5 that lie between 1 and some other number, and
then computes the sum of those multiples. For instance,
if the supplied number is 20, the result should be
98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer
greater than 1.

EXAMPLE:
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

INPUT: positive int

OUTPUT:

ASSUMPTIONS: num passed in is int greater than 1.
num passed in is valid input.
should not mutate the caller

QUESTIONS:

PSEUDO:
make an array of all 3 and 5 between 1 and num
sum the array

==================================================
EVALUATION

==================================================
=end

def multisum(number)
  (1..number).to_a.keep_if { |a| a % 3 == 0 || a % 5 == 0 }.reduce(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
