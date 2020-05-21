# SMALL PROBLEMS - EASY 1 - HOW MANY

=begin
==================================================

PROBLEM:
Write a method that counts the number of occurrences of each
element in a given array.The words in the array are case-sensitive:
'suv' != 'SUV'. ` Once counted, print each element alongside
the number of occurrences.

MENTAL MODEL:

INPUT: array

OUTPUT: word => number of occurences

EDGE CASES:

ASSUMPTIONS:
method is named 'count_occurences'
words are case sensitive

PSEUDO:
create a new hash. for each element in the array,
check if it is already a key in the hash. if it is,
increment the value by 1. if its not, add it to the
hash with key:value pair word: 1. print the result

==================================================
EVALUATION

learned about the %w() convention in ruby, and that
block arguments, like |v| need to be on the same line
as the declaration.
==================================================
=end

vehicles = %w(car car truck SUV truck motorcycle motorcycle car truck)

def count_occurences(array)
  occurences = {}
  array.each do |v|
    if occurences.key?(v)
      occurences[v] += 1
    else
      occurences[v] = 1
    end
  end
  occurences.each { |k, v| puts " #{k} => #{v}" }
end

count_occurences(vehicles)
