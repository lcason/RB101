# using a while loop, print 5 random numbers between 0 and 99
numbers = []

while (numbers.size < 5)
  numbers.push(rand(1..99))
end