=begin

Given an array of integers,
for each integer output all integers from 1 to that integer;
e.g. if the integer was 5, you would output 1, 2, 3, 4, 5.

=end

numbers = [7, 3, 5, 2, 1, 8, 4]

numbers.each do |number|
  counter = 0
  number.times do
    counter += 1
    puts counter
  end
end


(1..10).each_

arr1 = ["a", "b", "c"] arr2 = arr1.dup arr2[1].upcase!
#arr2  => ["a", "B", "c"] 
#arr1 # => ["a", "B", "c"]


# how could you order this array by descending numeric value?
arr = ['10', '11', '9', '7', '8']

arr.sort do |a,b|
  b.to_i <=> a.to_i
end