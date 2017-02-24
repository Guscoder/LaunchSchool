
CARDS = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'].freeze
SUITS = ['H', 'D', 'C', 'S'].freeze
DECK = []

players_cards = []
dealers_cards = []

def prompt(msg)
  puts "=> #{msg}"
end

def create_deck
  SUITS.each do |suit|
    CARDS.each do |card|
      DECK << [suit, card]
    end
  end
  DECK
end

def deal
  DECK.delete(DECK.sample)
end

def initial_deal(card_hand)
  2.times do deal
  card_hand << deal
  end
end

def in_game_deal(card_hand)
  deal
  card_hand << deal
end

def busted

end

def player_turn(player_hand)

  loop do
    prompt("Hit (h) or Stay (s)?")
    answer = gets.chomp.downcase
    break if answer == 's' || busted
    if answer == 'h' 
      in_game_deal(player_hand) # deal one card to player
    else
      prompt("Please select h or s.")
    end
  end

  if busted
    #game over
    #do you want to play again?
  else
    prompt("You chose to stay!")        
  end

end

create_deck

initial_deal(players_cards)
initial_deal(dealers_cards)

player_turn(players_cards)

