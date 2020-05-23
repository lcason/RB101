# VALID NUMBER 

=begin

PROBLEM 
create a method which determines whether the input is a valid 
integer. should work for positive, negative, and 0. 
  
=end 

# METHOD 
def valid_number?(num)
  num.to_f.to_s == num
end 

# TESTS 
puts valid_number?('5') == true 
puts valid_number?('0') == true 
puts valid_number?('1.5') == true 
puts valid_number?('-15') == true 
puts valid_number?('hello') == false