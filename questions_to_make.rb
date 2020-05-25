#DONT GET EM:

#ENUMBERABLES
# collect_concat
# chunk
# chunk_while 
# each_entry
# each_with_object 
# find vs detect
# flat_map
# lazy
# max_by
# member? 
# min_by
# slice_after
# slice_befor

#ARRAYS
# ary <=> other_ary
# bsearch 
# dig(idx, ..)
# fetch
# fill 
# frozen
# hash
#initialize_copy
#pack
#repeated_combination
#repeated_permutation
#transpose


#STRINGS 
#prepend <== stopped here. 

#how coud I count the instances of 3 in my_array? 
my_array.count(2)

#how could I print each element in an array 2 times?  
my_array.cycle(2){|x| puts x}

#how could I find the first number in an array that is divisible by 5 and 7? 
(1..100).detect {|n| n % 5 == 0  && n % 7 == 0 } => 35

# how could I remove the first 3 elements of my_array? 
my_array.drop(3)

# How could I remove the elements in an ordered list while a condition is true?
#Example, for [a = 1,2,3,4,5,0], remove until a value is greater than 3 
a.drop_while { |i| i < 3 }   #=> [3, 4, 5, 0]

# How could I iterate a block for each consecutive 3 numbers in an array? 
(1..10).each_cons(3) { |a| p a }
# outputs below
[1, 2, 3]
[2, 3, 4]
[3, 4, 5]
[4, 5, 6]
[5, 6, 7]
[6, 7, 8]
[7, 8, 9]
[8, 9, 10]

# how could  I iterate through each group of 3 numbers in 1..10? 
(1..10).each_slice(3) { |a| p a }
# outputs below
[1, 2, 3]
[4, 5, 6]
[7, 8, 9]
[10]

# how could I find all the prime numbers up to x? 
require 'prime'
Prime.entries 10                  #=> [2, 3, 5, 7]

# how could I find the index of the first item in an array that evaluates to true? 
(1..10).find_index { |i| i < 8} 

# how could I return the first 5 elements from an array? 
my_array.first(5)

# how could I get every number between 1-10 that is not also between 2-5? 
(1..10).grep_v 2..5

#how could I create a new hash of groups from an array depending on what the remainder is when divided by 3? 
#example: 1..6 would get me 0:[3,6], 1:[1,4], 2:[2,5]
(1..6).group_by { |i| i%3 }

# how could I sum all the numbers between 5 and 10? 
(5..10).reduce(:+)

#how could I multiply all teh numbers between 5 and 10? 
(5..10).reduce(:*)

#how could I find the longest string in array my_array? 
my_array.max

#how could I find the longest number in my_array? 
my_array.max

#how could I find the 3 largest numbers in my_array? 
my_array.max(3)

# how could I find the shortest 3 numbers in my_array? 
my_array.min(3)

#how could I return the longest and shortest numbers in my_array? 
my_array.minmax 

# how could I check that no words in my_array are longer that 5 characters? 
my_array.none? { |word| word.length == 5 }

# how could I check that exactly one word in my_array is 4 characters long? 
my_array.one? { |word| word.length == 4 }

# if I have (1.10), how could I get [ [2,4,6,8,10], [1,3,5,7,9] ]
(1..10).partition { |v| v.even? } 

# how could I return an array of all elements that DOnt meet a condition? ( i.e. all the numbers that are NOT even)
[1, 2, 3, 4, 5].reject { |num| num.even? } #=> [1, 3, 5]

# given (1..10), how could i count down from 10? 
(1..3).reverse_each{ |v| p v }

# how could I create slices of an array based on adjacent elements? for example,
# when the next number does not increase by 0, slice. 
a = [1,2,4,9,10,11,12,15,16,19,20,21]
b = a.slice_when {|i, j| i+1 != j }
p b.to_a #=> [[1, 2], [4], [9, 10, 11, 12], [15, 16], [19, 20, 21]]

# how could I sort an array by word length? 
%w{apple pear fig}.sort_by { |word| word.length }

# how could I return the first 3 elements of an array? 
my_array.take(3)

# how could I return elements from the block until I hit one that wasnt less than 3? 
a = [1, 2, 3, 4, 5, 0]
a.take_while { |i| i < 3 }   #=> [1, 2]

# how could I take array a = [one, two, three] and b= [1, 2, 3], and return [[one,1], [two, 2], [three,3]]
a.zip(b)

# given 2 arrays [1,1,1,2,3,4,5,5,6], how could I remove all elements that are also in [1,5,6]?
[1,1,1,2,3,4,5,5,6] - [1,5,6]
# => [2,3,4]

# how could I return the element at index 3 in my_Array? 
my_array.at_index(3)

#how could I empty an array? 
my_array.clear

#how could I find all combinations of 3 items in an array? all combinations of 4? ex for 
#1,2,3,4 getting 1,2,3 , 1,2,4, 1,3,4, etc. 
(1..4).combination(2).to_a  #=> [[1,2],[1,3],[1,4],[2,3],[2,4],[3,4]]

# how could I remove all copys of nil from an array? 
my_array.compact

# how could I add the arrays [2,3] and [4] to [0,1]? 
[0,1].concat([2,3],[4])

# how could I delete all numbers in an array if they are less than 3? 
(1..10).to_a.delete_if { |n| n < 3 }

# how could I remove elements from the front of the array while they are less than 3? 
a = [1, 2, 3, 4, 5, 0]
a.drop_while {|i| i < 3 }   #=> [3, 4, 5, 0]

# how could I check if 2 arrays are the same? 
array_a.eql?(array_b)

# how could I figure out the index of an element with value 'a' in my_array? 
my_array.find_index('a')

# how could I insert the value 99 at index 2 in my_array? 
my_array.insert(2,99)

# how could I keep only elements of the array that are < 3? 
a.keepy_if{ |v| v < 3 }

# how could I return the last 2 elements of an array? 
a.last(2)

# how could I find all permutations of array a = [1,2,3]?
a.permutation.to_a    #=> [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]

# how could I get an array of all combinations of all elements from 2 arrays? 
[1,2,3].product([4,5])     #=> [[1,4],[1,5],[2,4],[2,5],[3,4],[3,5]]

# given a = [ [ 1, "one"], [2, "two"], [3, "three"], ["ii", "two"] ]
# how could I search through this array and return the firs element that includes 'two'? 
a.rassoc("two")    #=> [2, "two"]

# how could I replace the contents of array_a with the contents of array_b?
array_a.replace(array_b)

# how could I find the index of the last object in the array that is equal to b? 
a = [ "a", "b", "b", "b", "c" ]
a.rindex("b")             #=> 3

# how could I rotate the first 2 elements in an array to the last? so a,b,c,d => c,d,b,a
%w(a b c d).rotate(2)

# how could I get 3 random numbers from a = [1,2,3,4]? 
a.sample(3)

# how could I randomly re-order my_array? 
my_array.shuffle

# how could I return the values located at index 1,3, and 5 of my_array? 
my_array.values_at(1, 3, 5)

# how could I get the absolute value of -3? 
3.abs

#how could I get the square value of 5? 
5.abs2

#how could I check a number is negative?
5.negative? 

# given 'hello!', how could I get a new string which is 'hello!hello!hello!'
"hello" * 3

#how could I get a array of characters in 'hello?
'hello'.chars

# how could I return the first character of 'hello'?
'hello'.chr

# how could I clear out a string? 
a = "abcde"
a.clear

# how could I delete the leading prefix of 'hello' from 'hello, Taylor' 
'hello, Taylor'.delete_prefix('hello')

# how could print each character in 'hello'? 
'hello'.each_char{ |c| p c }

# how could I insert 'X' at index 3 n 'abcd' so it now is 'abcXd'
"abcd".insert(3, 'X')    #=> "abcXd"

# how could I remove the leading white space from '     hello!' 
'    hello!'.lstrip





