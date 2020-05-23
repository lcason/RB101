# how could I count the number of items in my_array? 
my_array.count 

#how coud I count the instances of 3 in my_array? 
my_array.count(2)

#how could I print each element in an array 2 times?  
my_array.cycle(2){|x| puts x}

#how could I find the first number in an array that is divisible by 5 and 7? 

(1..100).detect {|n| n % 5 == 0  && n % 7 == 0 } => 35

# how could I remove the first 3 elements of my_array? 
my_array.drop(3)

# how could I get the consecutive 
