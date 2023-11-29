# rock paper scissors game

VALID_CHOICES = %w(rock paper scissors)

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

def display_results(player, computer)

  if win?(player, computer)
    prompt "You won!"
  elsif win?(computer, player)
    prompt "Computer won!"
  else
    prompt "It's a tie!"
  end

end

# def test_method
#   prompt "test message"
# end

# test_method # error

def prompt(msg)
  puts "=> #{msg}"
end

# test_method # display result just fine

loop do
  choice = ''

  loop do
    prompt "Choose one: #{VALID_CHOICES.join(', ')}"
    choice = gets.chomp.downcase.strip
    # validate input
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt "That's not a valida choice!"
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt "You chose #{choice}; Computer chose #{computer_choice}"

  display_results(choice, computer_choice)
  # if display_result return I would use it with prompt like below
  # prompt display_result

  prompt "Do you want to play again?"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')

end

prompt "Thank you for playing rock paper scissors game! Bye!"
