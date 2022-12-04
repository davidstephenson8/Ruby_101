VALID_CHOICES = %w(rock paper scissors)

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("You lose!")
  else
    prompt("It's a tie!")
  end
end

def win?(first, second)
  (first == "paper" && second == "rock")||
  (first == "rock" && second == "scissors") || 
  (first == 'scissors' && second == "paper")
end

def prompt(message)
  puts "=> #{message}"
end

loop do
  
  choice = ''

  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt "You chose #{choice}. The computer chose #{computer_choice}"

  display_results(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = gets.chomp
    break unless answer.downcase.start_with?("y")
end

prompt("Thanks for playing!")
