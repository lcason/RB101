# SMALL PROBLEMS - EASY 2 - HOW OLD IS TEDDY?
=begin
==================================================

PROBLEM:
Build a program that randomly generates and prints Teddy's age.
To get the age, you should generate a random number between 20 and 200.

FURTHER EXPLORATION:
Modify this program to ask for a name, and then print the age for that
person. For an extra challenge, use "Teddy" as the name if no name is
entered.

MENTAL MODEL:

INPUT: nil

OUTPUT: random age of teddy

==================================================
EVALUATION

==================================================
=end

def name_age(name = 'Teddy')
  age = rand(2..200)
  puts "#{name} is #{age} years old!"
end

puts 'What is your name?'
name = gets.chomp
name == '' ? name_age : name_age(name)
