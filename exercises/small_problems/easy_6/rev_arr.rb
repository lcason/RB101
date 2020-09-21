# SMALL PROBLEMS - EASY 6 - REVERSED ARRAYS

=begin
==================================================

PROBLEM:
Write a method that takes an Array as an argument,
and reverses its elements in place; that is, mutate
the Array passed into this method. The return value
should be the same Array object.

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

def reverse!(arr)
  new_arr = []
  until arr.empty?
    new_arr << arr.pop
  end
  arr.replace(new_arr)
end

def reverse(arr)
  old_arr = arr.dup
  new_arr = []
  until old_arr.empty?
    new_arr << old_arr.pop
  end
  new_arr
end


def _reverse_2(arr)
  arr.each_with_object([]) { |element, arr| arr.unshift(element) }
end 

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]   