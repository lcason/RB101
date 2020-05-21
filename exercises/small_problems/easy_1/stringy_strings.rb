# SMALL PROBLEMS - EASY 1 - STRINGY STRINGS

=begin
==================================================

PROBLEM:
Write a method that takes one argument, a positive integer,
and returns a string of alternating 1s and 0s, always starting with 1.
The length of the string should match the given integer.

Further exploration: Modify stringy so it takes an additional
optional argument that defaults to 1. If the method is called
with this argument set to 0, the method should return a String
 of alternating 0s and 1s, but starting with 0 instead of 1.

MENTAL MODEL:
for each number in INTEGER, print 1 or 0

INPUT: integer

OUTPUT: string of 1 and 0, starting with 1

EDGE CASES:

ASSUMPTIONS:
string must start with 1
input is valid positive integer input

QUESTIONS:

PSEUDO:

==================================================
EVALUATION

Again, wondering if I'm sacrificing readablity for getting it 
all in on one line. Had fewer dings from rubocop this time around. 

==================================================
=end

def stringy(num, b = 1)
  string = ''
  if b = 0
    num.times { |v| v.odd? ? string.concat('1') : string.concat('0') }
    return string
  else 
    num.times { |v| v.odd? ? string.concat('0') : string.concat('1') }
    return string
  end    
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
