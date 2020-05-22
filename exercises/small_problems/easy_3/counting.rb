# SMALL PROBLEMS - EASY 1 - COUNTING THE NUMBER OF CHARACTERS

=begin
==================================================

PROBLEM:
Write a program that will ask a user for an input of a word or
 multiple words and give back the number of characters. Spaces
should not be counted as a character.

MENTAL MODEL: delete all of the spaces, and return the length of the new
string

=end

puts "Please write word or multiple words:" 
word = gets.chomp
num_char = word.delete(" ").length
puts "There are #{num_char} characters in '#{word}'."
