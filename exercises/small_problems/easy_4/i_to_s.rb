# SMALL PROBLEMS - EASY 4 - NUMBER TO STRING

=begin
==================================================

PROBLEM:Write a method that takes a positive integer or zero,
and converts it to a string representation.

INPUT: Integer

METHOD:
convert the integer into an array of digits.
for each digit in the array, concat onto a string. return the string. 



OUTPUT: String

EDGE CASES

ASSUMPTIONS:
- it is a positive integer or 0 
- it is a valid input


QUESTIONS:


PSEUDO:


==================================================
EVALUATION
 waaaaaaay over complicated this.

==================================================
=end

DIGITS = ['0','1','2','3','4','5','6','7','8','9']

def integer_to_string(int)
  int.digits.reverse.join('')
end 

def signed_integer_to_string(int)
  if int == 0
    '0'
  elsif int.positive?
    '+' + integer_to_string(int)
  else 
    '-' + integer_to_string(-int)
  end 

end 

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'