# ROCK, PAPER, SCISSORS

=begin
  
PROBLEM
the user makes a choice, then the computer makes a choice,
and then the winner is displayed

=end

# VARIABLES===============
VALID_CHOICES = %w(rock paper scissors)
user_choice = ''

# METHODS=================
def prompt(message)
  puts(" => #{message}")
end


def won?(player,computer)
  (player == 'rock' && computer == 'scissors') ||
  (player == 'scissors' && computer == 'paper') ||
  (player == 'paper' && computer == 'rock')
end

def display_results(player, computer)
  if won?(player,computer)
    prompt('You won!')
  elsif won?(computer, player)
    prompt('Computer won!')
  else
    prompt('Its a tie!')
  end
end

# PROGRAM=================
loop do
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    user_choice = gets.chomp
    if VALID_CHOICES.include?(user_choice)
      break
    else
      prompt('Thats not a valid choice')
    end
  end

  computer_choice =  VALID_CHOICES.sample

  puts " You chose: #{user_choice}, computer chose: #{computer_choice}"

  display_results(user_choice, computer_choice)

  prompt('Do you want to play again?')
  answer = gets.chomp
  break unless answer.downcase == 'y'
end
