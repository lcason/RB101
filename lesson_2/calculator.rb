# CALCULATOR , PRACTICE BEFORE WATCHING VIDEO

=begin

INPUT:
- user input number 1
- user input number 2
- user input operation: +,-, *, /

OUTPUT:
- the result of number 1, operation, number 2

REQUIREMENTS:
- assume taht the user input is a number or check?
- number can be any kind of number? int float etc?
- what should display i f they try to do 0/3, or something
else that throws an error?
-

EXAMPLES:

input:
num1 = 3
num2 = 3
operator: *
output:
result = 9

performs the given operator on number 1 , to number two, and returns the result

"what is your first number: "
num1 = input

"what is your second number: "
num2 = input

what is your operator: (+,-,*,/)
operator = input

  case operator
  when *
    multiply num1 and 2
  when +
    add 1 and 2
  when -
    subtract 1 and 2
  when /
    divide 1 and 2
=end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(number)
  number.to_i() != 0
end

def operation_to_message(op)
  case op
  when '+' then 'adding'
  when '-' then 'subtracting'
  when '*' then 'multiplying'
  when '/' then 'dividing'
  end
end

num1 = nil
num2 = nil
operator = nil
name = ''
operator_prompt = <<-MSG

  What operation would you like to perform?
  multiply -- *
  divide   -- /
  subtract -- -
  add      -- +
MSG

prompt("Welcome to Calculator! Enter your name:")

loop do
  name = Kernel.gets().chomp
  if name.empty?()
    prompt("Please use a valid name")
  else
    break
  end
end

prompt("Hi #{name}")

loop do
  loop do
    prompt('What is your first number: ')
    num1 = Kernel.gets().to_f
    break if valid_number?(num1)
    prompt("Hmmm.... that doesn't look like a valid number.")
  end

  loop do
    prompt('What is your second number:')
    num2 = Kernel.gets().to_f
    break if valid_number?(num2)
    prompt("Hmmm.... that doesn't look like a valid number.")
  end

  loop do
    prompt(operator_prompt)
    operator = Kernel.gets().chomp
    if %(* / + -).include?(operator)
      break
    else
      prompt('Must choose *, /, +, or /')
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result =  case operator
            when '*' then num1 * num2
            when '/' then num1 / num2
            when '+' then num1 + num2
            when '-' then num1 - num2
            end

  prompt("The result is #{result}.")
  prompt("Do you want to perform another calculation? (Y for yes, N for no)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase == 'y'
end

prompt("Thank you for using the calculator. Goodbye!")

# TO DO
# check that numbers are valid
# check that operators are valid
# deal with zero division errors
# to how many places should floats be returned
