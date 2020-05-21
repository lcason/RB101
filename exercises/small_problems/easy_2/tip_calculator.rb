# SMALL PROBLEMS - EASY 2 - TIP CALCULATOR

=begin
==================================================
PROBLEM:
Create a simple tip calculator. The program should prompt for a bill amount
and a tip rate. The program must compute the tip and then display both the
tip and the total amount of the bill
==================================================
EVALUATION
==================================================
=end

puts 'What is the bill?'
bill = gets.chomp.to_f

puts 'What is the tip percentage?'
tip_percent = gets.chomp.to_i

tip = bill / 100 * tip_percent.round(2)
total = bill + tip.round(2)

puts "The tip is $#{tip}"
puts "The total is $#{total}"
