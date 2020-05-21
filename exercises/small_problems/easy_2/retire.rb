# SMALL PROBLEMS - EASY 2 - WHEN WILL I RETIRE? 

=begin
==================================================
PROBLEM:
Build a program that displays when the user will retire and how 
many years she has to work till retirement.

==================================================
EVALUATION
==================================================
=end

puts 'What is your age?'
age = gets.chomp.to_i
puts 'At what age would you like to retire?'

retire_age = gets.chomp.to_i
this_year = Time.now.year
years_to_go = retire_age - age
retirement_year = this_year + years_to_go

puts "It's #{this_year}. You wil retire in #{retirement_year}."
puts "You have only #{years_to_go} years of work to go!"
