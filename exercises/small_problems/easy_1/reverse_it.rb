# SMALL PROBLEMS - EASY 1 - REVERSE IT

=begin
==================================================

PROBLEM:

MENTAL MODEL:

INPUT:

OUTPUT:

EDGE CASES:

ASSUMPTIONS:

QUESTIONS:

PSEUDO:

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
