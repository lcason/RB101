# CAR CALCULATOR

=begin

PROBLEM: build a car calculator that takes in
the loan amount, the APR, and the loan duration,
and puts out the monthly interest rate, the loan
duration in months, and the monthly payment.

INPUT:
- loan amount ($0.00)
- APR (%0.0)
- loan duration (x years)

OUTPUT:
- monthly interest rate (%0.00)
-loan duration ( x months)
- monthly payment ($0.00)

=end

# REQUIREMENTS============
require "yaml"
require "pry"

# VARIABLES===============

MESSAGES = YAML.load_file('car_calculator_messages.yml')
loan_amount = nil
apr = nil
duration_years = nil

# METHODS=================
def prompt(input_1, input_2='')
  puts "=> #{input_1}#{input_2}"
end

def positive_float?(input)
  /\d/.match(input) && /^\d*\.?\d*$/.match(input) && input.to_f >= 0
end

def get_valid_numerical_input(prompt_message)
  loop do
    prompt(MESSAGES[prompt_message])
    number = gets.chomp
    if positive_float?(number)
      number = number.to_f.round(2)
      return number
    end
    # The prompt message and invalid message names must match in the yaml.
    prompt(MESSAGES["invalid_#{prompt_message}"])
  end
end

# BEGIN PROGRAM===========

prompt(MESSAGES['welcome'])

loop do
  loan_amount = get_valid_numerical_input('loan_amount')
  apr = get_valid_numerical_input('apr')
  duration_years = get_valid_numerical_input('duration_years')

  monthly_interest = apr / 100 / 12
  duration_months = (duration_years * 12).to_i
  monthly_payment = (loan_amount * (monthly_interest / (1 - (1 + monthly_interest)**(-duration_months)))).round(2)

  prompt(MESSAGES['monthly_payment'], monthly_payment)
  prompt(MESSAGES['loan_duration_months'], duration_months)
  prompt(MESSAGES['monthly_interest'], (monthly_interest * 100).round(2))
  prompt(MESSAGES['calculate_again'])
  input = gets.chomp.downcase
  break unless input == 'y'
end

prompt(MESSAGES['goodbye'])

# Given the hash below: 
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
# turn this into an arra containing only two elements, Barneys name and barneys number. 
flintstones.assoc("Barney")
#=> ["Barney", 2]