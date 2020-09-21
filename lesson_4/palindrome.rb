# PROBLEM:

# Given a string, write a method change_me which returns the same
# string but with all the words in it that are palindromes uppercased.
=begin

INPUT: string
OUTPUT: the same string with  all the palindromes uppercased. 

EXPLAIN: take the string, and check if each word is a palindrome. 
if it is, uppercase. return the new string. 

IMPLICIT REQ: 
EXPLICIT REQ: 

EXAMPLES: 

change_me('a mom and dad are cool) => 'A MOM and DAD are cool.'
change_me('it is noon') => 'it is NOON'
change_me('nothing here') => 'nothing here'


QUESTIONS: 
* do one letter words count as palindrome? 'I' 'a"
  * should it respect casing for palindromes 

EDGECASES: 
- empty string 
-one letter string 

DATA STRUCTURE: 
array

ALGORITHM: 

GETS str
words = str to array 
for each word in words
  if word is equal to word reversed
    up case word mutated
join words with ' '

=end 

def change_me(str)
  words = str.split
  words.each{|word| word.upcase! if word.downcase.reverse == word.downcase}
  words.join(' ')
end 

puts change_me('a mom and dad are cool')
puts change_me('it is noon')
puts change_me('nothing here')



# Given a string, write a method change_me which returns the same
# string but with all the words in it that are palindromes uppercased.