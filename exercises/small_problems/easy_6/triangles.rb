# SMALL PROBLEMS - EASY 6 - DOES MY LIST INCLUDE THIS?
=begin
==================================================

PROBLEM:Write a method that takes a positive integer, n, as an argument,
and displays a right triangle whose sides each have n stars. The hypotenuse
of the triangle (the diagonal side in the images below) should have one end
at the lower-left of the triangle, and the other end at the upper-right.

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

def triangle(num)
  num.times { |a| p (' ' * (num - a)) + ('*' * (a + 1)) }
end
