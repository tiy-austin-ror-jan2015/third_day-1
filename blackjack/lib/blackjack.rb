class Blackjack

  def initialize
    @player = Player.new
  end

  def play
    while @player.money > 10 do
      puts "Press p to play.['h' is hit, 's' is stay, ctl'+'d' is exit]"
      puts "You have $#{@player.money}."
      choice = gets.chomp
      if choice == 'p'
        @player.money -= 10
        hand = @player.cards.deal
        puts "Your hand is #{hand}"
        choice = gets.chomp
        #First Hit
        if choice == 'h'
          hand << @player.cards.hit
          if hand.reduce(:+) > 21
            puts "Bust"
          elsif hand.reduce(:+) < 21
            puts "Your hand is #{hand}"
            choice = gets.chomp
        #Second Hit
            if choice == 'h'
              hand << @player.cards.hit
              if hand.reduce(:+) > 21
                puts "Bust"
              elsif hand.reduce(:+) < 21
                puts "Your hand is #{hand}"
                choice = gets.chomp
        #Third Hit
                if choice == 'h'
                  hand << @player.cards.hit
                  if hand.reduce(:+) > 21
                    puts "Bust"
                  elsif hand.reduce(:+) < 21
                    puts "Your hand is #{hand}"
                    choice = gets.chomp
        #Fourth Hit
                    if choice == 'h'
                      hand << @player.card.hit
                      if hand.reduce(:+) > 21
                        puts "Bust"
                      else
                        puts "Too many hits."
                      end
                    end
        #Fourth Hit
                  else
                    puts "Winner"
                  end
                end
        #Third Hit
              else
                puts "Winner"
              end
            end
        #Second Hit
          else
            puts "Winner"
          end
        end
      end
    end
    puts "Out of money!"
    puts "Gameover"
  end

end
