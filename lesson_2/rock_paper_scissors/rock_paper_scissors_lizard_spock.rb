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

user_choice = ''

# METHODS================

def prompt(message)
  puts(" => #{message}")
end

def p1_beats_p2?(p1, p2)
  BEATS[p1].include?(p2)
end

def display_round_results(player, computer)
  if p1_beats_p2?(player, computer)
    prompt('You won!')
  elsif p1_beats_p2?(computer, player)
    prompt('Computer won!')
  else
    prompt('Its a tie!')
  end
end

def display_final_results(player, computer, ties)
  prompt("Player wins: #{player}, Computer wins: #{computer}, Ties: #{ties}")
  if player > computer
    prompt("You are the grand winner!")
  elsif player < computer
    prompt('Computer is the grand winner!')
  else
    prompt('Its a tie!')
  end
end

# PROGRAM=================
loop do     # => full program loop, does 5 rounds of r/p/sc/l/sp, determines grand winner, asks if play again
  player_win_count = 0
  computer_win_count = 0
  tie_count = 0
  round = 1

  loop do   # => goes through 5 rounds of r/p/sc/l/sp,
    loop do # => get a valid choice from user, r/p/sc/l/sp.
      puts("\n\n")
      prompt("ROUND #{round}")
      prompt("Choose one: ")
      CHOICE_AND_WORD.each { |choice, word| prompt "#{choice} for #{word}" }
      user_choice = gets.chomp

      break if CHOICE_AND_WORD.key?(user_choice)
      prompt('Thats not a valid choice')
    end

    computer_choice = CHOICE_AND_WORD.keys.sample

    prompt(" You chose: #{CHOICE_AND_WORD[user_choice]}, computer chose: #{CHOICE_AND_WORD[computer_choice]}")

    display_round_results(user_choice, computer_choice)

    if p1_beats_p2?(user_choice, computer_choice)
      player_win_count += 1
    elsif p1_beats_p2?(computer_choice, user_choice)
      computer_win_count += 1
    else 
      tie_count += 1
    end
    round += 1
    break if round == 6
  end

  puts("\n\n")
  display_final_results(player_win_count, computer_win_count, tie_count)
  prompt('Do you want to play again? (Y for yes, any other key for no)')
  answer = gets.chomp
  break unless answer.downcase == 'y'
end
prompt("Goodbye!")
