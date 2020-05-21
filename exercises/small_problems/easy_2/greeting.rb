# SMALL PROBLEMS - EASY 2 - A GREETING

=begin
==================================================
PROBLEM:
Write a program that will ask for user's name. 
The program will then greet the user. If the user writes "name!
then the computer yells back to the user.

==================================================
=end

puts 'What is your name?'
name = gets.chomp

puts name.end_with?('!') ? "HELLO #{name.upcase.chop}. WHY ARE WE SCREAMING?" : "Hello #{name}."