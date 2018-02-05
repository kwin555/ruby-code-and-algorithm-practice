
class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end


  def output_card
    puts "The #{rank} of #{suit} "
  end

  def change_my_suit
    new_suit = [:Spades, :Clubs].sample

    self.suit = new_suit
  end


  def self.random_card
    Card.new(rand(10), :spades)
  end

end

class Deck 

  def initialize # making the deck
    @cards = []  # creating an empty deck
    def setTheSuit(suit) #generating the deck
      i =1;
      for i in 1..13
        if i === 1
          @cards << Card.new("Ace", suit)
        elsif i  < 11 && i > 1
          @cards << Card.new("#{i}", suit)
        elsif i === 11
          @cards << Card.new("Jack", suit)
        elsif i === 12
          @cards << Card.new("Queen", suit)
        else
          @cards << Card.new("King",suit)
        end
        i = i + 1 # making sure it goes to 13
      end
    end  
    setTheSuit(:Spades) #passing the suit of Spades
    setTheSuit(:Clubs) #passing the suit of clubs
    setTheSuit(:Diamonds) #passing teh suit of Diamonds
    setTheSuit(:Hearts)  #passing the Suit of Hearts
  end # deck is filled with 52 cards

  def shuffle
    @cards.shuffle! 
  end

  def output
    @cards.each do |card|
      card.output_card
    end
  end

  def deal
    card = @cards.shift
    card.output_card
  end

end


deck = Deck.new
deck.shuffle
deck.deal