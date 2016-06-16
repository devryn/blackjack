

class Cards
  attr_reader :suit, :rank
  def initialize(suit,rank)
    @suit = suit
    @rank = rank
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
      (2..14).each do |rank|
        @cards.push(Cards.new(suit, rank))
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
#     puts "Welcome to the game of War."
#     print ">"
#     response = gets.chomp.downcase
#     exit if response == 'q'
#   end
# end




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

puts player_card.to_s
puts computer_card.to_s

puts "Would you like to hit or stay?"
response = gets.chomp.downcase
  #print
  #gets.chomp
  #hit or stay?

  #if >17, if < 17
end

  puts "Welcome to Kate's Jacked Game of Blackjack! Would you like to play?"
  play = gets.chomp.downcase

  if play == "yes"
    run
  elsif play == "no"
    puts "Sorry to hear that. Come back when you want to play!"
  else
    puts "Kate's Jacked Game of Blackjack doesn't understand. Please enter yes or no."
  end
