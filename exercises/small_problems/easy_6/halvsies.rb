# SMALL PROBLEMS - EASY 6 - REVERSED ARRAYS

=begin
==================================================

PROBLEM:
Write a method that takes an Array as an argument,
and returns two Arrays (as a pair of nested Arrays) that
contain the first half and second half of the original Array,
respectively. If the original array contains an odd number of
elements, the middle element should be placed in the first half Array.

MENTAL MODEL: 
if the number is even, split when the index == arr size/2 
if the number is odd, spllit when 

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

def halvsies(arr)
  new_arr = [[], []]
  arr.each do |a| 
    if arr.size.even? 
      if arr.index(a) <= (arr.size/2) - 1
        new_arr[0]<< a
      else
        new_arr[1]<< a
      end 
    else
      if arr.index(a) < (arr.size/2) + 1
        new_arr[0]<< a
      else
        new_arr[1]<< a
      end 
    end 
  end 
  new_arr
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]