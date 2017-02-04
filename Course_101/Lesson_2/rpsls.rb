VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

def prompt(message)
  Kernel.puts("=> #{message}")
end

def define_choice(choice) 
  case choice
  when 'r' then 'rock'
  when 's' then 'scissors'
  when 'p' then 'paper'
  when 'l' then 'lizard'
  when 'v' then 'spock' 
  end
end

def display_results(player, computer)
  if (player == 'rock' && computer == 'scissors') ||
      (player == 'paper' && computer == 'rock') ||
      (player == 'scissors' && computer == 'paper') ||
      (player == 'rock' && computer == 'lizard') ||
      (player == 'paper' && computer == 'spock') ||
      (player == 'scissors' && computer == 'lizard') ||
      (player == 'lizard' && computer == 'paper') ||
      (player == 'lizard' && computer == 'spock') ||
      (player == 'spock' && computer == 'rock') ||
      (player == 'spock' && computer == 'scissors')
    prompt("You won!!")
  elsif (player == 'rock' && computer == 'paper') ||
      (player == 'paper' && computer == 'scissors') ||
      (player == 'scissors' && computer == 'rock') ||
      (player == 'rock' && computer == 'spock') ||
      (player == 'paper' && computer == 'lizard') ||
      (player == 'scissors' && computer == 'spock') ||
      (player == 'lizard' && computer == 'rock') ||
      (player == 'lizard' && computer == 'scissors') ||
      (player == 'spock' && computer == 'lizard') ||
      (player == 'spock' && computer == 'paper')
    prompt("You lost!!")
  else
    prompt("It's a tie!")
  end
end

player_score = 0
computer_score = 0

def add_score(display_results, player_score, computer_score)
  if display_results == "You won!!"
    player_score += 1
  elsif display_results == "You lost!!"
    computer_score += 1
  end
  prompt("The score is now you #{player_score} and the computer #{computer_score}.")
end

loop do 
  choice = ''

  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}
      (r) = rock
      (p) = paper
      (s) = scissors
      (l) = lizard
      (v) = Spock") 
      # join takes all items in array and puts them togther as a string
    choice = Kernel.gets().chomp()

    choice = define_choice(choice)

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end  

  computer_choice = VALID_CHOICES.sample # sample chooses a random item from the array

  prompt("You chose: #{choice}; computer chose: #{computer_choice}")

  add_score(display_results(choice, computer_choice), player_score, computer_score)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
      
prompt("Thank you for playing. See ya!")


