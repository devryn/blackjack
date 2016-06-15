
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
        (2..14).each do |value|
          @cards << Cards.new(suit, value)
        end
      end
    end
  end

  class Hand
    def initialize
      @deck = []
  end

  class Player
    attr_reader :score, :name
  end

  class Dealer


    end
  end
