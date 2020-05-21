# SMALL PROBLEMS - EASY 1 - WHATS MY BONUS?
=begin
==================================================

PROBLEM:
Write a method that takes two arguments, a positive integer
and a boolean, and calculates the bonus for a given salary.
If the boolean is true, the bonus should be half of the salary.
If the boolean is false, the bonus should be 0.

MENTAL MODEL:
take the salary, and if the boolean is true, return salary divided by 2,
else, return 0.

INPUT:
-positive integer, salary
-boolean

OUTPUT:
-bonus for given salary, int

QUESTIONS:
-should the bonus always be an int? the examples do not adress
odd numbers.

==================================================
EVALUATION

==================================================
=end

def calculate_bonus(salary, good_job)
  good_job ? salary / 2 : 0
end

puts calculate_bonus(2_800, true) == 1_400
puts calculate_bonus(1_000, false) == 0
puts calculate_bonus(50_000, true) == 25_000
