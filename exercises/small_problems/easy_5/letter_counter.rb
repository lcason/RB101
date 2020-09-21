# SMALL PROBLEMS - EASY 5 - LETTER COUNTER
=begin

PROBLEM:
Write a method that takes a string with one or more space
separated words and returns a hash that shows the number of
words of different sizes.

Words consist of any string of characters that do not include a space.

METHOD 
for each word in the sentence, if word length is already in the hash,
  then that words value +=1, otherwise, create it at 1.

EXAMPLES


INPUT

OUTPUT

ALGORITHM

PSEUDO

=end

def word_sizes(str)
  counter = Hash.new(0)
  str.split.each do |word|
    counter[word.gsub(/\W/,'').length] += 1
  end 
  counter
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}