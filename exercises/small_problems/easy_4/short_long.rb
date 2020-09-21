# SMALL PROBLEMS - EASY 4 - SHORT LONG SHORT 

=begin
==================================================

PROBLEM:
Write a method that takes two strings as arguments, determines the longest of the two strings,
and then returns the result of concatenating the shorter string, the longer string, and the 
shorter string once again. You may assume that the strings are of different lengths.

MENTAL MODEL: takes in 2 strings, checks which string is longer, and then returns concatinating 
short long short. 

INPUT: 2 strings

OUTPUT: new string, short long shor

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

EDGE CASES

ASSUMPTIONS:
strings are different lengths

QUESTIONS:
assume that the input is a valid string? 
concatenate without spaces? 

PSEUDO:

short long short (str_1, str_2)
If str_1 is longer than str 2: 
  string_2  + string_1 + string_2
else: 
  string_1 + string_2 + string_1

==================================================
EVALUATION

This is a kind of difficult to read solution, 
an if else may have been better

==================================================
=end

def short_long_short(str_1, str_2)
  str_1.length > str_2.length ? str_2 + str_1 + str_2 : str_1 + str_2 + str_1
end 

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"