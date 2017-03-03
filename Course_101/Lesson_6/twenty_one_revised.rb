require "pry"

CARDS = ['1', '2', '3', '4', '5', '6', '7', '8'] +
        ['9', '10', 'J', 'Q', 'K', 'A'].freeze
SUITS = ['H', 'D', 'C', 'S'].freeze
DECK = []

def prompt(msg)
  puts "=> #{msg}"
end

def create_deck
  DECK.clear
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
  2.times do
    deal
    card_hand << deal
  end
end

def in_game_deal(card_hand)
  deal
  card_hand << deal
end

def hand_total_value(card_hand)
  total = 0
  card_hand.each do |card|
    if card[1] == "J"
      total += 10
    elsif card[1] == "Q"
      total += 10
    elsif card[1] == "K"
      total += 10
    elsif card[1] == "A"
      total += 11
    else
      total += card[1].to_i
    end
  end
  card_hand.select { |card| card[1] == "A" }.count.times do
    total -= 10 if total > 21
  end
  total
end

def busted(card_hand)
  hand_total_value(card_hand) > 21
end

def display_hands(player, dealer)
  prompt("You have: #{display_cards(player)}.
          The dealer is showing: #{display_cards(dealer)[0, 2]}")
end

def display_cards(hand)
  cards = []
  hand.each do |card|
    cards << card[1] + card[0]
  end
  cards.join(', ')
end

def player_turn(player_hand)
  prompt("You have a total of #{hand_total_value(player_hand)}.")

  loop do
    prompt("Hit (h) or Stay (s)?")
    answer = gets.chomp.downcase
    if answer == 'h'
      in_game_deal(player_hand) # deal one card to player
      prompt("You now have: #{display_cards(player_hand)} for a total
        of #{hand_total_value(player_hand)}.")
      break if busted(player_hand)
    else
      prompt("Please select h or s.")
    end
    break if answer == 's' || busted(player_hand)
  end
  if busted(player_hand)
    prompt("You lost, Loser. You're no Jedi!")
  else
    prompt("You chose to stay!")
  end
end

def dealer_turn(dealer_hand)
  loop do
    if hand_total_value(dealer_hand) < 17
      in_game_deal(dealer_hand)
      break if busted(dealer_hand)
    elsif hand_total_value(dealer_hand) >= 17
      prompt("Dealer stays.")
      break
    end
  end

  if busted(dealer_hand)
    dealer_total = hand_total_value(dealer_hand)
    prompt("Dealer busted with #{dealer_total}. Congratulations scoundrel,
      you managed win.")
  end
end

def compare_hands(player_total, dealer_total)
  prompt("You have: #{player_total}. The dealer has: #{dealer_total}")
  if player_total > dealer_total
    prompt("You win! You beat that feckless, nerf-herding dealer.")
  elsif dealer_total > player_total
    prompt("You lost! You are banned to the Imperial kessel mines.")
  else
    prompt("You have tied. How boring.")
  end
end

def declare_winner(player_score, dealer_score)
  if player_score == 5
    prompt("You have won 5 games! You win the match you squirmy Ewok!")
  elsif dealer_score == 5
    prompt("The Imperial Dealer has defeated you with 5 most impressive
      victories!")
  end
end

player_score = 0
dealer_score = 0

loop do
  players_cards = []
  dealers_cards = []

  prompt("Welcome to the game of Imperial 21.")
  create_deck
  initial_deal(players_cards)
  initial_deal(dealers_cards)

  display_hands(players_cards, dealers_cards)

  loop do
    player_turn(players_cards)

    if hand_total_value(players_cards) > 21
      dealer_score += 1
      break
    end

    dealer_turn(dealers_cards)

    if hand_total_value(dealers_cards) > 21
      player_score += 1
      break
    end

    compare_hands(hand_total_value(players_cards),
                  hand_total_value(dealers_cards))

    if hand_total_value(players_cards) < hand_total_value(dealers_cards)
      dealer_score += 1
    elsif hand_total_value(players_cards) > hand_total_value(dealers_cards)
      player_score += 1
    end

    break
  end

  if player_score == 5 || dealer_score == 5
    declare_winner(player_score, dealer_score)
    break
  else

    prompt("The score is now Player: #{player_score}, Dealer #{dealer_score}.")
    prompt("-------------")
    prompt("Would you like to play again? (y/n)")
    answer = gets.chomp.downcase
    break if answer == "n"
  end
end

prompt("Thanks for playing, Rebel scum.")
