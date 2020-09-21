# SMALL PROBLEMS - EASY 5 - ASCII STRING VALUE

=begin
==================================================

PROBLEM:
Write a method that determines and returns the ASCII string value
of a string that is passed in as an argument. The ASCII string value
is the sum of the ASCII values of every character in the string.
(You may use String#ord to determine the ASCII value of a character.)

EXAMPLES:

ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

METHOD: 
get the values of all the characters in a string into an array and then sum it.

INPUT: string

OUTPUT: int, value of all chars summed

EDGE CASES: 

ASSUMPTIONS:
- Assume valid string input?

QUESTIONS:


PSEUDO:

ascii_value(string)
  array
  FOR EACH character in string
    string ascii value to array
  array summed


==================================================
EVALUATION
 waaaaaaay over complicated this. 

==================================================
=end

def ascii_value(str)
  str.chars.collect{|&:ord}.sum
end 

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0