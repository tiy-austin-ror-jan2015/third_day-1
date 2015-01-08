class Player
  attr_accessor :cards, :money

  def initialize
    @cards = Deck.new
    @money = 100
  end
end
