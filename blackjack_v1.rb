class Blackjack

  def initialize
    @money = 100
    @player_hand = []

  end

  def deck
    deck = (1..10).to_a * 4
    #deck.push(Ace,Ace,Ace,Ace)
    deck.shuffle!
  end

  def hit
    @player_hand.push(deck.pop).flatten
  end

  def first_deal
    @player_hand.push(deck.pop(2)).flatten
    "Your hand #{@player_hand}."
  end

  def total
    @player_hand.flatten.reduce(:+)
  end

  def line
    "_"*20
  end
  def play_game

    first_deal
    if gets.chomp.downcase == 'h'
      @money -= 10
      hit
      if total == 21
        puts "You Win!"
      elsif total > 21
        puts "Bust!"
      else
        puts "Hit again? #{@player_hand.flatten}\nyes or no"
        second_hit = gets.chomp
        if second_hit.downcase == 'y'
          @money -= 10
          hit
          if total == 21
            puts "You Win!"
          elsif total > 21
            puts "Bust!"
          else
            puts "Hit again? #{@player_hand.flatten}\nyes or no"
            third_hit = gets.chomp
            if third_hit.downcase == 'y'
              @money -= 10
              hit
              if total == 21
                puts "You Win!"
              elsif total > 21
                puts "Bust!"
              else
                puts "Hit again? #{@player_hand.flatten}"
              end
            end
          end
        end
      end
    elsif gets.chop.downcase == 's'
      puts "Your hand #{@player_hand}."
      @money -= 10
    end
  end

  def play
    puts line
    puts "*******BLACKJACK_v1*******\nWould you like to start a game?\n         (y or n)"
    puts line

    if gets.chomp.downcase == 'y'
      play_game
    elsif gets.chomp.downcase == "n"
      puts "That's fine."
    else
      puts "yes or no"
    end
  end



end
hello = Blackjack.new
hello.play
