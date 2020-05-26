# ROCK, PAPER, SCISSORS, LIZARD, SPOCK

# VARIABLES==============
CHOICE_AND_WORD = {
  "r"   => 'rock',
  "p"   => 'paper',
  "sc"  => 'scissors',
  "sp"  => 'spock',
  "l"   => 'lizard'
}

BEATS = {
  'r'   => ['s', 'l'],
  'sc'  => ['l', 'p'],
  'p'   => ['r', 'sp'],
  'sp'  => ['sc', 'r'],
  'l'   => ['sp', 'p']
}
ROUNDS = 5
user_choice = ''

# METHODS================

def prompt(message)
  puts(" => #{message}")
end

def welcome
  prompt("Welcome to ROCK PAPER SCISSORS LIZARD SPOCK!")
  prompt("You will play #{ROUNDS} rounds.\
          At the end I will declare a GRAND WINNER!")
end

def p1_beats_p2?(p1, p2)
  BEATS[p1].include?(p2)
end

def display_round_results(player, computer, round_num)
  prompt("ROUND #{round_num} RESULTS")
  prompt("You chose: #{CHOICE_AND_WORD[player]}, \
          computer chose: #{CHOICE_AND_WORD[computer]}")
  if p1_beats_p2?(player, computer)
    prompt('You won!')
  elsif p1_beats_p2?(computer, player)
    prompt('Computer won!')
  else
    prompt('Its a tie!')
  end
end

def display_current_results(player, computer, ties)
  prompt("Player wins: #{player}, Computer wins: #{computer}, Ties: #{ties}")
end

def display_final_results(player, computer, ties)
  puts("\n\n")
  prompt("FINAL RESULTS")
  display_current_results(player, computer, ties)
  if player > computer
    prompt("You are the grand winner!")
  elsif player < computer
    prompt('Computer is the grand winner!')
  else
    prompt('Its a tie!')
  end
end

def get_valid_user_choice(round_num)
  loop do
    puts("\n\n")
    prompt("ROUND #{round_num}")
    prompt("Choose one: ")
    CHOICE_AND_WORD.each { |choice, word| prompt "#{choice} for #{word}" }
    user_choice = gets.chomp
    system "clear"
    if CHOICE_AND_WORD.key?(user_choice)
      return user_choice
    end
    prompt('Thats not a valid choice')
  end
end

# PROGRAM=================
loop do # => plays 5 rounds, determines grand winner, asks play again?
  system "clear"
  player_win_count = 0
  computer_win_count = 0
  tie_count = 0
  this_round = 1

  welcome()

  loop do # => does 5 rounds of game
    user_choice = get_valid_user_choice(this_round)
    computer_choice = CHOICE_AND_WORD.keys.sample

    display_round_results(user_choice, computer_choice, this_round)

    if p1_beats_p2?(user_choice, computer_choice)
      player_win_count += 1
    elsif p1_beats_p2?(computer_choice, user_choice)
      computer_win_count += 1
    else
      tie_count += 1
    end
    this_round += 1

    display_current_results(player_win_count, computer_win_count, tie_count)

    break if this_round == ROUNDS + 1
  end

  display_final_results(player_win_count, computer_win_count, tie_count)
  prompt('Do you want to play again? (Y for yes, any other key for no)')
  answer = gets.chomp
  break unless answer.downcase == 'y'
end

prompt("Goodbye!")
