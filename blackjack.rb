
  puts "Welcome to Kate's Jacked Game of Blackjack! Would you like to play?"
  play = gets.chomp.downcase

  def play_game
  puts "Draw two cards."

  if play == yes
    play_game
  if play == no
    puts "Sorry to hear that. Come back when you want to play!"
  else
    puts "Kate's Jacked Game of Blackjack doesn't understand. Please enter yes or no."
  end
  end
end

class Cards
  attr_reader :suits, :rank
  def initialize(suit,rank)
    @suit = suit
    @rank = rank
  end
end

class Deck
  def initialize
    @cards = []
  end
  def make_deck
    suits = [:hearts, :diamonds, :spades, :clubs]
    suits.each do |suit|
      (2..14).each do |rank|
        @cards << Cards.new(suit, rank)
      end
      def shuffle
        @cards.shuffle!
      end
    end
  end
end


class Hand
  def attr_accessor

end


class Player
  attr_reader :score, :name
end


  class Dealer
  end
end
