=begin
======================================================
PROBLEM
a method that returns the sum of two integers
input: 2 integers
output: sum 

assumptions: input and output should be ints. 

GET num_1
GET num_2

RETURN num_1 + num_2
======================================================
PROBLEM
a method that takes an array of strings, and returns a 
string that is all those strings concatenated together

INPUT: array of strings 
OUTPUT: concatenated string of contents of array

Questions: 
- should they be concatenated with spaces? 
- should you assume that the input is an array? 
- what should you return if the array is empty? 

GET: array_of_strings 
SET: final_string

PSUEDO
FOR EACH string in array_of_strings
  add " " and the string to the end of final_string 

RETURN final_string

======================================================
PROBLEM
a method that takes an array of integers, 
and returns a new array with every other element

INPUT: array of integers
OUTPUT: array with every other element of first array 

QUESTIONS: 
should it start with the first item in the array, or the second? 
what should it do wit an empty array? 
should it assume user input is an array of integers? 

MENTAL MODEL
iterate through the original array, and add every other element to 
a new array. return the new array 

PSEUDO
GET array

SET new_array = FOR EACH element in array, select it IF its index is not odd. 

=end 