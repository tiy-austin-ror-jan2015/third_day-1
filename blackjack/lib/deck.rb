class Deck
  attr_reader :cards

  def initialize
    tens = [10] * 16
    aces = [11] * 4
    @cards = ((2..9).to_a * 4).concat(tens).concat(aces).shuffle
  end

  def shuffle
    @cards = @cards.shuffle
  end

  def deal
    @cards.shift(2)
  end

  def hit
    @cards.shift
  end

end


