# SMALL PROBLEMS - EASY 6 - DELETE VOWELS

=begin
==================================================

PROBLEM:

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

def remove_vowels(arr)
  arr.map { |a| a.tr('aeiouAEIOU', '') }
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
