# SMALL PROBLEMS - EASY 6 - COMBINE TWO LISTS
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

def interleave(arr_1, arr_2)
  arr_1.zip(arr_2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
