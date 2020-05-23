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

require 'yaml'
require 'pry'
MESSAGES = YAML.load_file('calculator_messages.yml')

# METHODS 
def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  #binding.pry
 num.to_i.to_s == num
end

def operation_to_message(op)
  message = case op
  when '+' then 'adding'
  when '-' then 'subtracting'
  when '*' then 'multiplying'
  when '/' then 'dividing'
  end
  message 
end

# VARS 
num1 = nil
num2 = nil
operator = nil
name = ''


# BEGIN PROGRAM
prompt(MESSAGES['welcome'])

loop do
  name = Kernel.gets().chomp
  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("Hi #{name}")

loop do
  loop do
    prompt(MESSAGES['first_number'])
    num1 = Kernel.gets().chomp
    if valid_number?(num1)
      num1 = num1.to_i
      break
    end
    prompt(MESSAGES['invalid_number'])
  end

  loop do
    prompt(MESSAGES['second_number'])
    num2 = Kernel.gets().chomp
    if valid_number?(num2)
      num2 = num2.to_i
      break
    end
    prompt(MESSAGES['invalid_number'])
  end

  loop do
    prompt(MESSAGES['operator_prompt'])
    operator = Kernel.gets().chomp
    if %(* / + -).include?(operator)
      break
    else
      prompt('invalid_operator')
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
  prompt(MESSAGES['another_calculation'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase == 'y'
end

prompt(MESSAGES['goodbye'])

# TO DO
# check that numbers are valid
# check that operators are valid
# deal with zero division errors
# to how many places should floats be returned

