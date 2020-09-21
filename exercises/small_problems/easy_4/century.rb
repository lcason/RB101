# SMALL PROBLEMS - EASY 4 - WHAT CENTURY IS THAT? 

=begin
==================================================

PROBLEM:
Write a method that takes a year as input and
returns the century. The return value should be a
string that begins with the century number, and ends
with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01.
So, the years 1901-2000 comprise the 20th century.

MENTAL MODEL: 
1 == 'st'
2 == 'nd'
3 == 'rd'
4, 5, 6, 7, 8, 9, 10, 11, 12, 13,14, 15,16,17,18,19,20 =='th'


start with 1. is the year between 0 and 1000? 
if no, add 1000. is it between those numbers?
INPUT: integer, year

OUTPUT:string, century, 'st', 'nd', 'rd', 'th'

EDGE CASES:

ASSUMPTIONS:
- the input is a valid year

QUESTIONS:

PSEUDO:

==================================================
EVALUATION

==================================================
=end




 def century(year)
  century_number = 1
  years = 100
  until year.between?(0,years)
    years += 100
    century_number += 1
  end 
  case century_number % 100 
  when 1 then century_number.to_s + 'st'
  when 2 then century_number.to_s + 'nd'
  when 3 then century_number.to_s + 'rd'
  else        century_number.to_s + 'th'
  end 
 end

p century(2000) #== '20th'
p century(2001) #== '21st'
p century(1965) #== '20th'
p century(256) #== '3rd'
p century(5) #== '1st'
p century(10103) #== '102nd'
p century(1052) #== '11th'
p century(1127) #== '12th'
p century(11201) #== '113th'