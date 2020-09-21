# SMALL PROBLEMS - EASY 5 - AFTER MIDNIGHT

=begin
  
PROBLEM: 
The time of day can be represented as the number of minutes before
 or after midnight. If the number of minutes is positive, the time
 is after midnight. If the number of minutes is negative, the time
 is before midnight.

Write a method that takes a time using this minute-based format and
returns the time of day in 24 hour format (hh:mm). Your method should
work with any integer input.

You may not use ruby's Date and Time classes.

METHOD 

for the number input, integer division by 60, make that into hours. 
modulo divison by 60, make that in to minutes 

60 min in an hour 
24 hour in a day 

EXAMPLES 

INPUT 

OUTPUT 

ALGORITHM 

PSEUDO 

=end 

def time_of_day(min)
  hours = min/60
  minutes = min % 60
  if hours.abs>24
    hours = hours % 24

  if hours.negative? 

  if minutes < 10
    minutes = "0#{minutes}"
  end 
  if hours < 10 
    hours = "0#{hours}"
  end 

  return "#{hours}:#{minutes}"

end 

p time_of_day(0) #== "00:00"
p time_of_day(-3) #== "23:57"
p time_of_day(35) #== "00:35"
p time_of_day(-1437) #== "00:03"
p time_of_day(3000) #== "02:00"
p time_of_day(800) #== "13:20"
p time_of_day(-4231) #== "01:29"