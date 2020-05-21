# SMALL PROBLEMS - EASY 1 - REVERSE IT

=begin
==================================================

PROBLEM:
Write a method that takes one argument, a string, and
returns a new string with the words in reverse order.

MENTAL MODEL:

INPUT: string

OUTPUT: string, words in reverse order

EDGE CASES:

ASSUMPTIONS:
-maintains casing of words

QUESTIONS:
-how should it treat punctuation? maintain its location
in the string? ex "Hello, world" => "world, Hello" or
eliminate it?

PSEUDO: extract the words into an array, and then reverse the array

==================================================
EVALUATION

this solution was convoluted, shoud have used the
.join(' ') method for arrays instead of concating .each and
chopping the last character. however, leared about chop
and concat, so thats cool.

==================================================
=end

def reverse_sentence(string)
  final_string = ''
  string.split.reverse.each { |v| final_string.concat(v, ' ') }
  final_string.chop
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
