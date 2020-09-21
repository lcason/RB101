# SMALL PROBLEMS - EASY 5 - LETTER SWAP

=begin
  
PROBLEM: 
Given a string of words separated by spaces,
write a method that takes this string of words and returns a
string in which the first and last letters of every word are swapped.

You may assume that every word contains at least one letter,
and that the string will always contain at least one word.
You may also assume that each string contains nothing but words and spaces

METHOD 

for each word in the sentence, take the first letter, put it at the end, take the
  last letter, put it at the beggining. 

EXAMPLES 

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

INPUT 

OUTPUT 

ALGORITHM 

PSEUDO 

=end 

def swap (str)
  words = str.split
  new_words = []

  words.each do |word|
    if word.length > 3
      new_words << word[-1] + word[1..-1] + word[0]
    else 
      
  end 

  new_words.join(' ')
end 


p swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
p swap('Abcde') #== 'ebcdA'
p swap('a') #== 'a'