class BlackJack
  attr_accessor :player_one

  def initialize
    @player_one = Player.new
    @card = Deck.new
  end

  def play
    puts "The player's balance is: #{player_one.balance}"
    print "You must pay $10 to join the game.  Press Y to play or N to exit: "
    users_choice = gets.chomp

    player_one.balance -= 10
    puts "Your balance is: #{player_one.balance}"

      card_one = @player_one.cards.draw
      puts "Your cards are: #{card_one}"

      while @player_one.cards.count > 0 do
      print "Do you want to hit (h) or stay (s)? "
      users_choice = gets.chomp

      card = @card.hit

        if users_choice == "h"
          puts "Your card is #{card}."
          puts "Yours card's are: #{card_one.push(card)}"
        elsif users_choice == "s"
          puts "Yours cards are: #{card_one}"
          puts "The dealers cards are: #{@card.dealers_draw}"
          break
        end

      end


      #if users_choice == "h"
    #end
  end
end

class Player
  attr_accessor :cards, :score, :balance
  def initialize
    @balance = 100
    @cards = Deck.new
    @score = 0
  end
end

class Deck
  attr_reader :cards

  def initialize
    cards_that_equal_ten = [10] * 16
    aces = [11] * 4
    @cards = ((2..9).to_a * 4).concat(cards_that_equal_ten).concat(aces).shuffle
  end

  def count
    @cards.count
  end

  def shuffle
    @cards = @cards.shuffle
  end

  def dealers_draw
    @cards.shift(2)
  end

  def draw
    @cards.shift(2)
  end

  def hit
    @cards.shift
  end
end

game = BlackJack.new

game.play
