# SMALL PROBLEMS - EASY 4 - STRING TO NUMBER

=begin
==================================================

PROBLEM:Write a method that takes a String of digits, and returns the
appropriate number as an integer.

INPUT: string

METHOD:  multiplly each character digit by the length of the string minus its cahracter index


OUTPUT: integer

EDGE CASES

ASSUMPTIONS:


QUESTIONS:


PSEUDO:


==================================================
EVALUATION
 waaaaaaay over complicated this.

==================================================
=end

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(str)
dig_arr = str.chars.collect { |a| DIGITS[a] }
dig_arr.collect.each_with_index { |v, i| 10**(dig_arr.length - (i + 1)) * v }.reduce(:+)
end

def signed_number(str)
  case str.chr
  when '+' then string_to_integer(str[ 1..-1 ])
  when '-' then - string_to_integer(str[ 1..-1 ])
  else          string_to_integer(str)
  end 
end 
  
p signed_number('-4321') == -4321
p signed_number('570') == 570
p signed_number('+570') == 570
