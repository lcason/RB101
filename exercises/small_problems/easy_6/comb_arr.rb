# SMALL PROBLEMS - EASY 6 - COMBINE ARRAYS
=begin
==================================================

PROBLEM:
Write a method that takes two Arrays as arguments,
and returns an Array that contains all of the values from
the argument Arrays. There should be no duplication of values
in the returned Array, even if there are duplicates in the
original Arrays.

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

def merge(arr_1,arr_2)
  (arr_1 + arr_2).uniq
end

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
