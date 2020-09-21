# SMALL PROBLEMS - EASY 4 - RUNNING TOTALS

=begin
==================================================

PROBLEM: Write a method that takes an Array of numbers,
and returns an Array with the same number of elements,
and each element has the running total from the original Array.

EXAMPLES: 
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

METHOD: 
each value should be the reduction of the numbers between  0 and that numbers index. 
take? 
index? 0

INPUT: array of numbers

OUTPUT: array of numbers


ASSUMPTIONS:


QUESTIONS:
do they have to be ints?
can we assume a valid input? 

PSEUDO:

def running total (arr) 
  new_arr = []
  arr.each{|a|}


==================================================
EVALUATION
 waaaaaaay over complicated this. 

==================================================
=end

def running_total(arr)
  new_arr = []
  arr.each_index{|a| p arr(0..a).reduce(:+)}
  new_arr
end 

p running_total([2, 5, 13]) #== [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) #== [14, 25, 32, 47, 67]
p running_total([3]) #== [3]
p running_total([]) #== []