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
def prompt(input, input_2='')
  puts "=> #{input}#{input_2}"
end

def input?(input)
  (integer?(input) && input.to_i >= 0) || (float?(input) && input.to_f >= 0)
end

def integer?(input)
  /^\d+$/.match(input)
end

def float?(input)
  /\d/.match(input) && /^\d*\.?\d*$/.match(input)
end

def get_input(prompt_message)
  loop do
    prompt(MESSAGES[prompt_message])
    input = gets.chomp
    if input?(input)
      input = input.to_f.round(2)
      return input
    end
    prompt(MESSAGES["invalid_#{prompt_message}"])
  end
end

# BEGIN PROGRAM===========

prompt(MESSAGES['welcome'])

loop do
  loan_amount = get_input('loan_amount')
  apr = get_input('apr')
  duration_years = get_input('duration_years')

  monthly_interest = apr / 100 / 12
  duration_months = duration_years * 12
  monthly_payment = loan_amount * (monthly_interest / (1 - (1 + monthly_interest)**(-duration_months)))

  prompt(MESSAGES['monthly_payment'], monthly_payment.round(2))
  prompt(MESSAGES['loan_duration_months'], duration_months.to_i)
  prompt(MESSAGES['monthly_interest'], (monthly_interest * 100).round(2))
  prompt(MESSAGES['calculate_again'])
  input = gets.chomp.downcase
  break unless input == 'y'
end

prompt(MESSAGES['goodbye'])
