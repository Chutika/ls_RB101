# Define methods and constants

VALID_CHOICES = %w(rock paper scissors lizard spock)
VALID_CHOICES_MSG = <<-MSG
Please enter one of the following choices ...
'r' for rock
'p' for paper
'sc' for scissors
'l' for lizard
'sp' for spock
MSG

def win?(first, second)
  (first == 'rock' && ['scissors', 'lizard'].include?(second)) ||
    (first == 'paper' && ['rock', 'spock'].include?(second)) ||
    (first == 'scissors' && ['paper', 'lizard'].include?(second)) ||
    (first == 'lizard' && ['spock', 'paper'].include?(second)) ||
    (first == 'spock' && ['scissors', 'rock'].include?(second))
end

def game_result(player, computer)
  if win?(player, computer)
    1
  elsif win?(computer, player)
    -1
  else
    0
  end
end

def display_result(result_number)
  if result_number == 1
    prompt "You won!"
  elsif result_number == -1
    prompt "Computer won!"
  else
    prompt "It's a tie!"
  end
end

def to_full_name(acronym)
  case acronym
  when 'r'  then 'rock'
  when 'p'  then 'paper'
  when 'sc' then 'scissors'
  when 'sp' then 'spock'
  when 'l'  then 'lizard'
  else           ''
  end
end

def prompt(msg)
  puts "=> #{msg}"
end

# Rock Paper Scissors Lizad Spock Game loop start

player_win = 0
computer_win = 0

loop do
  prompt "\n- - - - - - - - - - - - - - - - - - - - - - - - - - -\n"
  choice = ''

  # User's turn
  # User enter one of the following; rock paper scissors lizard or spock
  loop do
    prompt VALID_CHOICES_MSG
    choice = gets.chomp.downcase.strip
    choice = to_full_name(choice)

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt "That's not a valid choice!"
    end
  end

  # Computer's turn
  computer_choice = VALID_CHOICES.sample

  # Game result
  prompt "You chose #{choice}; Computer chose #{computer_choice}"
  result = game_result(choice, computer_choice)
  display_result(result)

  # Keep track of points
  if result == 1
    player_win += 1
    prompt "Your point has increased to #{player_win} while computer has #{computer_win} points!"
  elsif result == -1
    computer_win += 1
    prompt "Computer's point has increased to #{computer_win} while your point is #{player_win}!"
  else
    prompt "Your point stays the same as #{player_win} and computer's point at #{computer_win}"
  end

  # End game condition - When points reach 3, ask user whether they want to continue playing
  if player_win == 3
    prompt "You are the grand winner! Do you want to play again?"
    answer = gets.chomp
    player_win = 0
    computer_win = 0
    break unless answer.downcase.start_with?('y')
  end

  if computer_win == 3
    prompt "The grand winner is computer! Do you want to play again?"
    answer = gets.chomp
    player_win = 0
    computer_win = 0
    break unless answer.downcase.start_with?('y')
  end
end

prompt "Thank you for playing rock paper scissors spock lizard game! Bye!"
