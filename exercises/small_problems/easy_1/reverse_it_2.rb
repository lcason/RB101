# SMALL PROBLEMS - EASY 1 - REVERSE IT PART 2

=begin
==================================================

PROBLEM:
Write a method that takes one argument, a string containing one or more words,
and returns the given string with words that contain five or more characters
reversed. Each string will consist of only letters and spaces. Spaces should
be included only when more than one word is present

MENTAL MODEL:
given the input of a sentence, return that sentence with words containing
5 or more characters reversed.

INPUT: string

OUTPUT: string with words length 5 or more reversed.

EDGE CASES:

ASSUMPTIONS:
string will only consist of letters and spaces
spaces included only when more than one word is present
casing is maintained.

QUESTIONS:

PSEUDO:

==================================================
EVALUATION

feel pleased that I managed to do it in one line, however,
not sure if I'm chaining too many things. Is this sacrificing
readability? 

==================================================
=end

def reverse_words(string)
  string.split.each { |word| word.reverse! if word.length >= 5 }.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
