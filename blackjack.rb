

class Cards
  attr_reader :suit, :value
  def initialize(suit,value)
    @suit = suit
    @value = value
  end
#to_s here?
end

class Deck
  def initialize
    @cards = []
  end
  def make_deck
    suits = [:hearts, :diamonds, :spades, :clubs]
    suits.each do |suit|
      (2..14).each do |value|
        @cards.push(Cards.new(suit, value))
      end
    end
  end
  def shuffle
    @cards.shuffle!
  end
  def draw
    @cards.shift
  end
end



class Hand
  def run
    deck = Deck.new
    deck.shuffle
  end
end


class Player
  #player score, player card, etc.
end


class Dealer
  #computer score, computer card, etc.
end

#build game first, then add player/dealer classes
def run
  deck = Deck.new
  deck.make_deck
  deck.shuffle



  player_card = []
  computer_card = []

  player_card.push deck.draw
  computer_card.push deck.draw

  player_card.push deck.draw
  computer_card.push deck.draw

  player_card.each do |card|
    puts "#{card.suit} - #{card.value}"
  end



puts "Would you like to hit or stay?"
response = gets.chomp.downcase
  if response == "hit"
    player_card.push deck.draw
    player_card.each do |card|
    puts "#{card.value} - #{card.suit}"
  end
  puts "Would you like to hit or stay?"
  response = gets.chomp.downcase
    if response == "hit"
    player_card.push deck.draw
    player_card.each do |card|
    puts "#{card.value} - #{card.suit}"
    end
  end
    elsif response == "stay"
      player_card.each do |card|
      puts "Your hand is #{card.value} of #{card.suit}"
   end
 end
end





#  if computer_card.map <= 17 then deck.draw
#  end
#  if computer_card.map > 17
#    puts "Computer stays."
#  end



  puts "Welcome to Kate's Jacked Game of Blackjack! Would you like to play?"
  play = gets.chomp.downcase

  if play == "yes"
    run
  elsif play == "no"
    puts "Sorry to hear that. Come back when you want to play!"
  else
    puts "Kate's Jacked Game of Blackjack doesn't understand. Please enter yes or no."
  end
