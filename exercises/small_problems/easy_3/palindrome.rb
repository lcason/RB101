# SMALL PROBLEMS - EASY 3 - PALINDROMES

=begin
==================================================
PROBLEM:
Write a method that returns true if the string passed as an argument
is a palindrome, false otherwise. A palindrome reads the same forward
and backward. For this exercise, case matters as does punctuation and
spaces.

MENTAL MODEL: 

==================================================
EVALUATION


==================================================
=end

def palindrome?(word)
  word == word.reverse
end 

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end

def palindromic_number?(num)
  num.to_s == num.to_s.reverse
end 

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true