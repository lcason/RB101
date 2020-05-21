# SMALL PROBLEMS - EASY 2 - HOW BIG IS THE ROOM? 

=begin
==================================================

PROBLEM:
Build a program that asks a user for the length and width of a room in
meters and then displays the area of the room in both square meters and
square feet.

Note: 1 square meter == 10.7639 square feet

Do not worry about validating the input at this time.

==================================================
EVALUATION

learned about the road function for floats. 

==================================================
=end

puts " Enter the width of the room in meters: "
length = gets.chomp.to_f
puts " Enter the length of the room in meters: "

width = gets.chomp.to_f
area_meters = length * width.round(2)
area_feet = area_meters * 10.7639.round(2)

puts "The area of the room is #{area_meters} square meters (#{area_feet} square feet)."